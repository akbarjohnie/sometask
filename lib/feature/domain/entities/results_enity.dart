import 'package:equatable/equatable.dart';

import 'package:first_task/feature/data/models/description_model/description_model.dart';
import 'package:first_task/feature/data/models/specialization_model/specialization_model.dart';

class ResultsEntity extends Equatable {
  final String? id;
  final String? imageUrl;
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final List<DescriptionModel?>? educations;
  final List<Specializations?>? specializations;
  final List<DescriptionModel?>? workExp;

  const ResultsEntity({
    required this.id,
    required this.imageUrl,
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.educations,
    required this.specializations,
    required this.workExp,
  });

  @override
  List<Object?> get props => [
        educations,
        firstName,
        id,
        imageUrl,
        lastName,
        middleName,
        specializations,
        workExp,
      ];
}
