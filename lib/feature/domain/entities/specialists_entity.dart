import 'package:equatable/equatable.dart';
import 'package:first_task/feature/data/models/results_model/results_model.dart';

class SpecialistsEntity extends Equatable {
  final int total;
  final int limit;
  final int page;
  final List<ResultModel?>? results;

  const SpecialistsEntity({
    required this.total,
    required this.limit,
    required this.page,
    required this.results,
  });

  @override
  List<Object?> get props => [
        total,
        limit,
        page,
        results,
      ];
}
