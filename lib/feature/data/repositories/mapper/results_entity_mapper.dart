import 'package:first_task/feature/data/models/results_model/results_model.dart';
import 'package:first_task/feature/domain/entities/results_enity.dart';

ResultsEntity resultsToEntity(ResultModel model) {
  return ResultsEntity(
    educations: model.educations,
    firstName: model.first_name,
    id: model.id,
    imageUrl: model.image_url,
    lastName: model.last_name,
    middleName: model.middle_name,
    specializations: model.specializations,
    workExp: model.work_experiences,
  );
}
