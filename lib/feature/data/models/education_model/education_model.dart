import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_model.freezed.dart';
part 'education_model.g.dart';

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
