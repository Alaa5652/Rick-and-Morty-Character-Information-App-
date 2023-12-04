import 'package:flutter/material.dart';
import '../../data/models/characters.dart';
import '../../data/repository/character_repo.dart';

class CharacterProvider extends ChangeNotifier {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];
  List<Character> searchedForCharacters = [];
  bool _isSearching = false;
  final TextEditingController searchTextController = TextEditingController();

  CharacterProvider(this.charactersRepository) {
    searchTextController.addListener(() {
      // Handle text changes if needed
    });
    notifyListeners();
  }

  bool get isSearching => _isSearching;

  void setIsSearching(bool value) {
    _isSearching = value;
    notifyListeners();
  }

  List<Character> getAllCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
      this.characters = characters;
      notifyListeners();
    });

    return characters;
  }

  List<Character> addSearchedForItemsToSearchedList(String searchedCharacter) {
    searchedForCharacters = characters
        .where((character) =>
        character.name!.toLowerCase().startsWith(searchedCharacter))
        .toList();
    notifyListeners();
    return searchedForCharacters;
  }
}