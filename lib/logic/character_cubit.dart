// import 'package:bloc/bloc.dart';
// import 'package:flutter/cupertino.dart';
// import '../../data/models/characters.dart';
// import '../core/constance/lists.dart';
// import '../data/repository/character_repo.dart';
//
// part 'character_state.dart';
//
// class CharacterCubit extends Cubit<CharacterState> {
//   final CharactersRepository charactersRepository;
//   List<Character> characters = [];
//
//   CharacterCubit(this.charactersRepository) : super(CharacterInitial());
//
//   List<Character> getAllCharacters() {
//     charactersRepository.getAllCharacters().then((characters) {
//       emit(CharactersLoaded(characters));
//       this.characters = characters;
//     });
//
//     return characters;
//   }
//   void addSearchedForItemsToSearchedList(String searchedCharacter) {
//     searchedForCharacters = characters
//         .where((character) =>
//         character.name!.toLowerCase().startsWith(searchedCharacter))
//         .toList();
//     emit(SearchedCharactersLoaded(searchedForCharacters));
//   }
//
// }