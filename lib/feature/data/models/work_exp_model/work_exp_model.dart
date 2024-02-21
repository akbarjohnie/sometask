import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_exp_model.freezed.dart';
part 'work_exp_model.g.dart';

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
