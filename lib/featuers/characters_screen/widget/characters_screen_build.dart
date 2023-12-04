import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constance/lists.dart';
import '../../../core/widgets/loading_indicator.dart';
import '../../../logic/provider/character_provider.dart';
import 'characters_screen_list.dart';
class CharactersScreenBuild extends StatelessWidget {
  const CharactersScreenBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProvider>(
      builder: (context, characterProvider, _) {
        if (characterProvider.characters.isNotEmpty) {
          allCharacter = characterProvider.characters;
          return const CharactersScreenList();
        } else {
          return const ShowLoadingIndicator();
        }
      },
    );  }
}
