class BookAppointmentRequestEntity {
  final int doctorId;
  final String startTime;
  final String? notes;

  const BookAppointmentRequestEntity({
    required this.doctorId,
    required this.startTime,
    this.notes,
  });
}
