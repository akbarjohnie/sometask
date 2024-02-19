import 'package:first_task/feature/data/models/specialists_model.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';

SpecialistsEntity mapToEntity(SpecialistsModel model) {
  return SpecialistsEntity(
    total: model.total,
    limit: model.limit,
    results: model.results,
    page: model.page,
  );
}
