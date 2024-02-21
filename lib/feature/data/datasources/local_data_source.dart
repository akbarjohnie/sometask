import 'dart:convert';
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:first_task/core/error/exceptions.dart';
import 'package:first_task/feature/data/models/specialists_model/specialists_model.dart';

abstract interface class SpecialistsLocalDataSource {
  /// Gets the cached [List<SpecialistsModel>] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<List<SpecialistsModel>> getLastSpecialistsModelFromCache();

  Future<void> specialistsToCache(List<SpecialistsModel> specialists);
}

// ignore: constant_identifier_names
const CACHED_SPECIALISTS_LIST = 'CACHED_SPECIALISTS_LIST';

class SpecialistsLocalDataSourceImpl implements SpecialistsLocalDataSource {
  final SharedPreferences sharedPreferences;

  SpecialistsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<SpecialistsModel>> getLastSpecialistsModelFromCache() {
    final jsonSpecialistsList =
        sharedPreferences.getStringList(CACHED_SPECIALISTS_LIST);
    if (jsonSpecialistsList != null && jsonSpecialistsList.isNotEmpty) {
      debugPrint('Get Specialists from Cache: ${jsonSpecialistsList.length}');
      return Future.value(jsonSpecialistsList
          .map((specialists) =>
              SpecialistsModel.fromJson(json.decode(specialists)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<String>> specialistsToCache(List<SpecialistsModel> specialists) {
    final List<String> jsonSpecialistsList = specialists
        .map((specialists) => json.encode(specialists.toJson()))
        .toList();

    sharedPreferences.setStringList(
      CACHED_SPECIALISTS_LIST,
      jsonSpecialistsList,
    );

    debugPrint('SpecialistModel to write Cache: ${jsonSpecialistsList.length}');
    return Future.value(jsonSpecialistsList);
  }
}
