import 'package:first_task/feature/data/models/results_model/results_model.dart';
import 'package:first_task/feature/domain/entities/results_enity.dart';

ResultsEntity resultsToEntity(ResultModel model) {
  return ResultsEntity(
    educations: model.educations,
    first_name: model.first_name,
    id: model.id,
    image_url: model.image_url,
    last_name: model.last_name,
    middle_name: model.middle_name,
    specializations: model.specializations,
    work_experiences: model.work_experiences,
  );
}
