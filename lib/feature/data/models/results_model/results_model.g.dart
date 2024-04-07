// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultModelImpl _$$ResultModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultModelImpl(
      educations: (json['educations'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DescriptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      first_name: json['first_name'] as String?,
      id: json['id'] as String?,
      image_url: json['image_url'] as String?,
      last_name: json['last_name'] as String?,
      middle_name: json['middle_name'] as String?,
      specializations: (json['specializations'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Specializations.fromJson(e as Map<String, dynamic>))
          .toList(),
      work_experiences: (json['work_experiences'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DescriptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultModelImplToJson(_$ResultModelImpl instance) =>
    <String, dynamic>{
      'educations': instance.educations,
      'first_name': instance.first_name,
      'id': instance.id,
      'image_url': instance.image_url,
      'last_name': instance.last_name,
      'middle_name': instance.middle_name,
      'specializations': instance.specializations,
      'work_experiences': instance.work_experiences,
    };
