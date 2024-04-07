import 'package:equatable/equatable.dart';

import 'package:first_task/feature/domain/entities/description_entity.dart';

class SpecializationsEntity extends Equatable {
  final String? experienceFrom;
  final DescriptionEntity? specialization;

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
