import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization_model.freezed.dart';
part 'specialization_model.g.dart';

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
