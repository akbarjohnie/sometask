import 'package:equatable/equatable.dart';
import 'package:first_task/feature/data/models/education_model/education_model.dart';
import 'package:first_task/feature/data/models/specialization_model/specialization_model.dart';
import 'package:first_task/feature/data/models/work_exp_model/work_exp_model.dart';

class ResultsEntity extends Equatable {
  final List<EducationModel?>? educations;
  final String? firstName;
  final String? id;
  final String? imageUrl;
  final String? lastName;
  final String? middleName;
  final List<Specializations?>? specializations;
  final List<WorkExperiancesModel?>? workExp;

  const ResultsEntity({
    required this.educations,
    required this.firstName,
    required this.id,
    required this.imageUrl,
    required this.lastName,
    required this.middleName,
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
