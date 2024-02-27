import 'package:first_task/feature/data/models/education_model/education_model.dart';
import 'package:first_task/feature/domain/entities/education_entity.dart';

EducationEntity educationToEntity(EducationModel model) {
  return EducationEntity(
    description: model.description,
    from: model.from,
    id: model.id,
    name: model.name,
    to: model.to,
  );
}
