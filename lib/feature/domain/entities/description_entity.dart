import 'package:equatable/equatable.dart';

class DescriptionEntity extends Equatable {
  final String? id;
  final String? name;
  final String? description;
  final String? from;
  final String? to;

  const DescriptionEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.from,
    required this.to,
  });

  @override
  List<Object?> get props => [
        description,
        from,
        id,
        name,
        to,
      ];
}
