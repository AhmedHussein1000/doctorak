enum AppointmentCardType {
  pending('Pending'),
  completed('Completed'),
  cancelled('Cancelled');

  final String name;
  const AppointmentCardType(this.name);
}
