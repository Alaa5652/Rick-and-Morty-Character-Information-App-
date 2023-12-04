import '../models/characters.dart';
import '../web_services/character_web_service.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.fetchCharacters();
    return characters;
  }
}
