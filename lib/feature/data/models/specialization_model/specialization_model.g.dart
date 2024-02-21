// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecializationsImpl _$$SpecializationsImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecializationsImpl(
      experience_from: json['experience_from'] as String?,
      specialization: json['specialization'] == null
          ? null
          : SpecializationModel.fromJson(
              json['specialization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecializationsImplToJson(
        _$SpecializationsImpl instance) =>
    <String, dynamic>{
      'experience_from': instance.experience_from,
      'specialization': instance.specialization,
    };

_$SpecializationModelImpl _$$SpecializationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecializationModelImpl(
      created_at: json['created_at'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SpecializationModelImplToJson(
        _$SpecializationModelImpl instance) =>
    <String, dynamic>{
      'created_at': instance.created_at,
      'description': instance.description,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updated_at,
    };
