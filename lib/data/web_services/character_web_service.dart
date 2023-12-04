import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../core/constance/string_constace_app.dart';
import '../models/characters.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: kBaseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout:  const Duration(seconds: 20)
    );

    dio = Dio(options);
  }


  Future<List<Character>> fetchCharacters() async {
    try {
      final response = await dio.get('character');
      final data = response.data;

      List<Character> characters = List<Character>.from(
        data['results'].map((characterData) => Character.fromJson(characterData)),
      );

      return characters;
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching characters: $e');
      }
      return [];
    }
  }

}
