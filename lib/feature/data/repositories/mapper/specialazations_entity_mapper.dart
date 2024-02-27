import 'package:first_task/feature/data/models/specialization_model/specialization_model.dart';
import 'package:first_task/feature/domain/entities/specializations_entity.dart';

SpecializationsEntity specializationsToEntity(Specializations model) {
  return SpecializationsEntity(
    experienceFrom: model.experience_from,
    specialization: _specializationEntity(model.specialization),
  );
}

SpecializationEntity? _specializationEntity(SpecializationModel? model) {
  return SpecializationEntity(
    createdAt: model?.created_at,
    description: model?.description,
    id: model?.id,
    name: model?.name,
    updatedAt: model?.updated_at,
  );
}
