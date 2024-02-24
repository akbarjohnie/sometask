// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'package:first_task/core/error/exceptions.dart';
import 'package:first_task/feature/data/models/specialists_model/specialists_model.dart';

abstract interface class SpecialistsRemoteDataSource {
  /// Calls the /client/v1/specialists?page=$page&limit=$limit&sort=-created_at endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<SpecialistsModel>> getAllSpecialists(int page);

  /// Calls the '' endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  // Future<List<SpecialistsModel>> searchSpecialists(String query);
}

class SpecialistsRemoteDataSourceImpl implements SpecialistsRemoteDataSource {
  final http.Client client;

  final _baseUrl = dotenv.env['BASE_URL'];

  SpecialistsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SpecialistsModel>> getAllSpecialists(int page) {
    final url =
        '$_baseUrl/client/v1/specialists?page=$page&limit=10&sort=-created_at';
    return _getSpecialistsFromUrl(url);
  }

  Future<List<SpecialistsModel>> _getSpecialistsFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
      headers: {'accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> result =
          jsonDecode(utf8.decode(response.bodyBytes));
      List<SpecialistsModel> list = [SpecialistsModel.fromJson(result)];
      return list;
    } else {
      throw ServerException();
    }
  }
}
