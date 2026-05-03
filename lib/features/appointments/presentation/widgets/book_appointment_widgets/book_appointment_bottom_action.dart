import 'package:doctorak/core/functions/show_toast.dart';
import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/core/widgets/custom_button.dart';
import 'package:doctorak/features/appointments/presentation/controllers/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:doctorak/features/appointments/presentation/controllers/book_appointment_cubit/book_appointment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookAppointmentBottomAction extends StatelessWidget {
  final int currentStep;
  final VoidCallback onNextStep;

  const BookAppointmentBottomAction({
    super.key,
    required this.currentStep,
    required this.onNextStep,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookAppointmentCubit, BookAppointmentState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (_) {
            context.goNamed(RouteNames.bookingConfirmedName);
          },
          failure: (error) {
            customToast(
              error.message ?? AppConstants.unknownError,
              ToastStates.error,
            );
          },
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          paymentProcessing: () => true,
          orElse: () => false,
        );

        return CustomButton(
          isLoading: isLoading,
          onPressed: isLoading ? null : onNextStep,
          buttonText: currentStep == 2 ? 'Book Now' : 'Continue',
        );
      },
    );
  }
}
