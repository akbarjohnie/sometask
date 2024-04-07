import 'package:freezed_annotation/freezed_annotation.dart';

part 'description_model.freezed.dart';
part 'description_model.g.dart';

@freezed
abstract class DescriptionModel with _$DescriptionModel {
  const factory DescriptionModel({
    String? id,
    String? name,
    String? description,
    String? from,
    String? to,
  }) = _EducationModel;

  factory DescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$DescriptionModelFromJson(json);
}
