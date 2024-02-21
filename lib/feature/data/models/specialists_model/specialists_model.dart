import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:first_task/feature/data/models/results_model/results_model.dart';

part 'specialists_model.freezed.dart';
part 'specialists_model.g.dart';

@freezed
abstract class SpecialistsModel with _$SpecialistsModel {
  const factory SpecialistsModel({
    required int total,
    required int limit,
    required int page,
    List<ResultModel?>? results,
  }) = _SpecialistsModel;

  factory SpecialistsModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialistsModelFromJson(json);
}
