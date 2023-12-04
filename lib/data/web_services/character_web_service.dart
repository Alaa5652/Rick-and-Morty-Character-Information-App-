import 'package:dio/dio.dart';

import '../../core/constance/string_constace_app.dart';
import '../models/characters.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: kBaseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20), // 60 seconds,
      receiveTimeout:  const Duration(seconds: 20)
    );

    dio = Dio(options);
  }

  // Future<List<dynamic>> getAllCharacters() async {
  //   try {
  //     Response response = await dio.get('character');
  //     print(response.data.toString());
  //     return response.data;
  //   } catch (e) {
  //     print("${e.toString()} // getAllCharacters WebService");
  //     return [];
  //   }
  //
  // }

  Future<List<Character>> fetchCharacters() async {
    try {
      final response = await dio.get('character');
      final data = response.data;

      List<Character> characters = List<Character>.from(
        data['results'].map((characterData) => Character.fromJson(characterData)),
      );

      return characters;
    } catch (e) {
      print('Error fetching characters: $e');
      return [];
    }
  }

}
