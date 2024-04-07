import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:first_task/feature/data/models/description_model/description_model.dart';
import 'package:first_task/feature/data/models/specialization_model/specialization_model.dart';

part 'results_model.freezed.dart';
part 'results_model.g.dart';

@freezed
abstract class ResultModel with _$ResultModel {
  const factory ResultModel({
    List<DescriptionModel?>? educations,
    String? first_name,
    String? id,
    String? image_url,
    String? last_name,
    String? middle_name,
    List<Specializations?>? specializations,
    List<DescriptionModel?>? work_experiences,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}
