import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:first_task/feature/data/models/description_model/description_model.dart';

part 'specialization_model.freezed.dart';
part 'specialization_model.g.dart';

@freezed
abstract class Specializations with _$Specializations {
  const factory Specializations({
    String? experience_from,
    DescriptionModel? specialization,
  }) = _Specializations;

  factory Specializations.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsFromJson(json);
}
