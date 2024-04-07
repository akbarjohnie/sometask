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
          : DescriptionModel.fromJson(
              json['specialization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecializationsImplToJson(
        _$SpecializationsImpl instance) =>
    <String, dynamic>{
      'experience_from': instance.experience_from,
      'specialization': instance.specialization,
    };
