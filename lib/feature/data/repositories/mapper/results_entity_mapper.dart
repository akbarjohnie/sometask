import 'package:first_task/feature/data/models/results_model/results_model.dart';
import 'package:first_task/feature/domain/entities/results_enity.dart';

ResultsEntity resultsToEntity(ResultModel model) {
  return ResultsEntity(
    id: model.id,
    imageUrl: model.image_url,
    firstName: model.first_name,
    lastName: model.last_name,
    middleName: model.middle_name,
    educations: model.educations,
    specializations: model.specializations,
    workExp: model.work_experiences,
  );
}
