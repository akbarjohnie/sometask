import 'package:equatable/equatable.dart';

class SpecializationsEntity extends Equatable {
  final String? experienceFrom;
  final SpecializationEntity? specialization;

  const SpecializationsEntity({
    required this.experienceFrom,
    required this.specialization,
  });

  @override
  List<Object?> get props => [
        experienceFrom,
        specialization,
      ];
}

class SpecializationEntity extends Equatable {
  final String? createdAt;
  final String? description;
  final String? id;
  final String? name;
  final String? updatedAt;

  const SpecializationEntity({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.name,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        createdAt,
        description,
        id,
        name,
        updatedAt,
      ];
}
