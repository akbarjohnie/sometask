import 'package:first_task/feature/data/models/work_exp_model/work_exp_model.dart';
import 'package:first_task/feature/domain/entities/work_experiances_entity.dart';

WorkExperiancesEntity workExpToEntity(WorkExperiancesModel model) {
  return WorkExperiancesEntity(
    description: model.description,
    from: model.from,
    id: model.id,
    name: model.name,
    to: model.to,
  );
}
