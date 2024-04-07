import 'package:first_task/feature/data/models/description_model/description_model.dart';
import 'package:first_task/feature/data/models/specialization_model/specialization_model.dart';
import 'package:first_task/feature/domain/entities/description_entity.dart';
import 'package:first_task/feature/domain/entities/specializations_entity.dart';

SpecializationsEntity specializationsToEntity(Specializations model) {
  return SpecializationsEntity(
    experienceFrom: model.experience_from,
    specialization: _spToEntity(model.specialization),
  );
}

DescriptionEntity? _spToEntity(DescriptionModel? model) {
  return DescriptionEntity(
    id: model?.id,
    name: model?.name,
    description: model?.description,
    from: model?.from, // created_at
    to: model?.to, // updated_at
  );
}
