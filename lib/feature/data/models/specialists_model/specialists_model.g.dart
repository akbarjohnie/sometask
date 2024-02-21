// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialists_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialistsModelImpl _$$SpecialistsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialistsModelImpl(
      total: json['total'] as int,
      limit: json['limit'] as int,
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpecialistsModelImplToJson(
        _$SpecialistsModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'results': instance.results,
    };
