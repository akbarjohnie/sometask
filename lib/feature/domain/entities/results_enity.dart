import 'package:equatable/equatable.dart';
import 'package:first_task/feature/data/models/education_model/education_model.dart';
import 'package:first_task/feature/data/models/specialization_model/specialization_model.dart';
import 'package:first_task/feature/data/models/work_exp_model/work_exp_model.dart';

class ResultsEntity extends Equatable {
  final List<EducationModel?>? educations;
  final String? first_name;
  final String? id;
  final String? image_url;
  final String? last_name;
  final String? middle_name;
  final List<Specializations?>? specializations;
  final List<WorkExperiancesModel?>? work_experiences;

  const ResultsEntity({
    required this.educations,
    required this.first_name,
    required this.id,
    required this.image_url,
    required this.last_name,
    required this.middle_name,
    required this.specializations,
    required this.work_experiences,
  });

  @override
  List<Object?> get props => [
        educations,
        first_name,
        id,
        image_url,
        last_name,
        middle_name,
        specializations,
        work_experiences,
      ];
}
