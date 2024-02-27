import 'package:equatable/equatable.dart';

class WorkExperiancesEntity extends Equatable {
  final String? description;
  final String? from;
  final String? id;
  final String? name;
  final String? to;

  const WorkExperiancesEntity({
    required this.description,
    required this.from,
    required this.id,
    required this.name,
    required this.to,
  });

  @override
  List<Object?> get props => [
        description,
        from,
        id,
        name,
        to,
      ];
}
