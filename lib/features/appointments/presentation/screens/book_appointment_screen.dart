import 'package:doctorak/core/config/payment_config.dart';
import 'package:doctorak/core/functions/show_toast.dart';
import 'package:doctorak/core/services/payment_data.dart';
import 'package:doctorak/core/services/paypal_service.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/core/caches/cache_keys.dart';
import 'package:doctorak/core/caches/shared_prefs_manager.dart';
import 'package:doctorak/core/enums/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paymob/flutter_paymob.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/features/appointments/presentation/controllers/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:doctorak/features/appointments/domain/entities/book_appointment_request_entity.dart';
import '../widgets/book_appointment_widgets/booking_stepper_header.dart';
import '../widgets/book_appointment_widgets/book_appointment_date_time_step.dart';
import '../widgets/book_appointment_widgets/book_appointment_payment_step.dart';
import '../widgets/book_appointment_widgets/book_appointment_summary_step.dart';
import '../widgets/book_appointment_widgets/book_appointment_bottom_action.dart';
import '../widgets/book_appointment_widgets/wallet_phone_bottom_sheet.dart';

class BookAppointmentScreen extends StatelessWidget {
  final DoctorEntity doctor;

  const BookAppointmentScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return _BookAppointmentScreenContent(doctor: doctor);
  }
}

class _BookAppointmentScreenContent extends StatefulWidget {
  final DoctorEntity doctor;

  const _BookAppointmentScreenContent({required this.doctor});

  @override
  State<_BookAppointmentScreenContent> createState() =>
      _BookAppointmentScreenContentState();
}

class _BookAppointmentScreenContentState
    extends State<_BookAppointmentScreenContent> {
  int _currentStep = 0;
  DateTime? _selectedDate;
  String? _selectedTime;
  PaymentMethod? _selectedPaymentMethod;
  final TextEditingController _notesController = TextEditingController();

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_currentStep == 0) {
      if (_selectedDate == null || _selectedTime == null) {
        customToast('Please select a date and time.', ToastStates.error);
        return;
      }
    } else if (_currentStep == 1) {
      if (_selectedPaymentMethod == null) {
        customToast('Please select a payment method.', ToastStates.error);
        return;
      }
    } else if (_currentStep == 2) {
      _submitBooking();
      return;
    }
    setState(() {
      _currentStep++;
    });
  }

  BookAppointmentRequestEntity _buildRequest() {
    final timeString = _selectedTime ?? '00:00';
    final selectedDateString =
        '${_selectedDate!.year}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.day.toString().padLeft(2, '0')}';
    final startTime = '$selectedDateString $timeString';

    return BookAppointmentRequestEntity(
      doctorId: widget.doctor.id!,
      startTime: startTime,
      notes: _notesController.text.trim().isNotEmpty
          ? _notesController.text.trim()
          : null,
    );
  }

  PaymentData _buildPaymentData({required String currency, double? amount}) {
    final fullName = SharedPrefsManager.getString(CacheKeys.userName) ?? '';
    final nameParts = fullName.trim().split(' ');
    final firstName = nameParts.isNotEmpty ? nameParts.first : '';
    final lastName = nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';

    return PaymentData(
      amount: amount ?? widget.doctor.appointPrice?.toDouble() ?? 0,
      currency: currency,
      description: 'Appointment with Dr. ${widget.doctor.name ?? 'Doctor'}',
      email: SharedPrefsManager.getString(CacheKeys.userEmail),
      firstName: firstName.isNotEmpty ? firstName : null,
      lastName: lastName.isNotEmpty ? lastName : null,
      phone: SharedPrefsManager.getString(CacheKeys.userPhone),
    );
  }

  void _submitBooking() {
    final request = _buildRequest();
    final cubit = context.read<BookAppointmentCubit>();
    final usdAmount = widget.doctor.appointPrice?.toDouble() ?? 0;

    switch (_selectedPaymentMethod!) {
      case PaymentMethod.creditCard:
        cubit.processStripeAndBook(
          paymentData: _buildPaymentData(currency: PaymentConfig.usdCurrency),
          request: request,
        );
      case PaymentMethod.paymobCard:
        final egpAmount = usdAmount * PaymentConfig.usdToEgpRate;
        FlutterPaymob.instance.payWithCard(
          context: context,
          currency: PaymentConfig.egpCurrency,
          amount: egpAmount,
          onPayment: (response) {
            if (response.success) {
              cubit.bookAppointment(request);
            } else {
              customToast(
                response.message ?? 'Payment failed',
                ToastStates.error,
              );
            }
          },
        );
      case PaymentMethod.paymobWallet:
        final egpAmount = usdAmount * PaymentConfig.usdToEgpRate;
        _showWalletPhoneBottomSheet(
          egpAmount: egpAmount,
          request: request,
          cubit: cubit,
        );
      case PaymentMethod.paypal:
        PaypalService.processPaypalPayment(
          context,
          paymentData: _buildPaymentData(currency: PaymentConfig.usdCurrency),
          onSuccess: () => cubit.bookAppointment(request),
          onError: () => customToast('Payment failed', ToastStates.error),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Book Appointment'),
      body: Padding(
        padding: EdgeInsets.only(
          top: 32.h,
          left: 24.w,
          right: 24.w,
          bottom: 16.h,
        ),
        child: Column(
          children: [
            BookingStepperHeader(currentStep: _currentStep),
            SizedBox(height: 40.h),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: _buildStepContent(),
              ),
            ),
            BookAppointmentBottomAction(
              currentStep: _currentStep,
              onNextStep: _nextStep,
            ),
            SizedBox(height: kBottomNavigationBarHeight),
          ],
        ),
      ),
    );
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return BookAppointmentDateTimeStep(
          selectedDate: _selectedDate,
          selectedTime: _selectedTime,
          onDateSelected: (date) => setState(() => _selectedDate = date),
          onTimeSelected: (time) => setState(() => _selectedTime = time),
        );
      case 1:
        return BookAppointmentPaymentStep(
          selectedPaymentMethod: _selectedPaymentMethod,
          onPaymentMethodSelected: (method) =>
              setState(() => _selectedPaymentMethod = method),
        );
      case 2:
        return BookAppointmentSummaryStep(
          doctor: widget.doctor,
          selectedDate: _selectedDate!,
          selectedTime: _selectedTime!,
          selectedPaymentMethod: _selectedPaymentMethod!,
          notesController: _notesController,
        );
      default:
        return const SizedBox.shrink();
    }
  }

  void _showWalletPhoneBottomSheet({
    required double egpAmount,
    required BookAppointmentRequestEntity request,
    required BookAppointmentCubit cubit,
  }) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (bottomSheetContext) {
        return WalletPhoneBottomSheet(
          onContinue: (phone) {
            cubit.emitPaymentProcessing();
            _processWalletPayment(
              phone: phone,
              egpAmount: egpAmount,
              request: request,
              cubit: cubit,
            );
          },
        );
      },
    );
  }

  void _processWalletPayment({
    required String phone,
    required double egpAmount,
    required BookAppointmentRequestEntity request,
    required BookAppointmentCubit cubit,
  }) {
    FlutterPaymob.instance.payWithWallet(
      context: context,
      currency: PaymentConfig.egpCurrency,
      amount: egpAmount,
      number: phone,
      onPayment: (response) {
        if (response.success) {
          cubit.bookAppointment(request);
        } else {
          customToast(response.message ?? 'Payment failed', ToastStates.error);
        }
      },
    );
  }
}
