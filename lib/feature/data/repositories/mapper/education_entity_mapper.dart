import 'package:first_task/feature/data/models/description_model/description_model.dart';
import 'package:first_task/feature/domain/entities/description_entity.dart';

DescriptionEntity educationOrWorkExpToEntity(DescriptionModel model) {
  return DescriptionEntity(
    id: model.id,
    name: model.name,
    description: model.description,
    from: model.from,
    to: model.to,
  );
}
