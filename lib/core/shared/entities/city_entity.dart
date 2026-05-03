class CityEntity {
  final int? id;
  final String? name;
  final GovernrateEntity? governrate;

  const CityEntity({this.id, this.name, this.governrate});
}

class GovernrateEntity {
  final int? id;
  final String? name;

  const GovernrateEntity({this.id, this.name});
}
