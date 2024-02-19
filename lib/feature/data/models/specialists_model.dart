import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialists_model.freezed.dart';
part 'specialists_model.g.dart';

@freezed
abstract class SpecialistsModel with _$SpecialistsModel {
  const factory SpecialistsModel({
    int? total,
    int? limit,
    int? page,
    List<ResultModel?>? results,
  }) = _SpecialistsModel;

  factory SpecialistsModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialistsModelFromJson(json);
}

@freezed
abstract class ResultModel with _$ResultModel {
  const factory ResultModel({
    List<EducationModel?>? educations,
    String? first_name,
    String? id,
    String? image_url,
    String? last_name,
    String? middle_name,
    List<Specializations?>? specializations,
    List<WorkExperiancesModel?>? work_experiences,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}

@freezed
abstract class EducationModel with _$EducationModel {
  const factory EducationModel({
    String? description,
    String? from,
    String? id,
    String? name,
    String? to,
  }) = _EducationModel;

  factory EducationModel.fromJson(Map<String, dynamic> json) =>
      _$EducationModelFromJson(json);
}

@freezed
abstract class Specializations with _$Specializations {
  const factory Specializations({
    String? experience_from,
    SpecializationModel? specialization,
  }) = _Specializations;

  factory Specializations.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsFromJson(json);
}

@freezed
abstract class SpecializationModel with _$SpecializationModel {
  const factory SpecializationModel({
    String? created_at,
    String? description,
    String? id,
    String? name,
    String? updated_at,
  }) = _SpecializationModel;

  factory SpecializationModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationModelFromJson(json);
}

@freezed
abstract class WorkExperiancesModel with _$WorkExperiancesModel {
  const factory WorkExperiancesModel({
    String? description,
    String? from,
    String? id,
    String? name,
    String? to,
  }) = _WorkExperiancesModel;

  factory WorkExperiancesModel.fromJson(Map<String, dynamic> json) =>
      _$WorkExperiancesModelFromJson(json);
}
