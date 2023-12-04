import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constance/lists.dart';
import '../../../core/constance/valus.dart';
import '../../../core/widgets/loading_indicator.dart';
import '../../../logic/provider/character_provider.dart';
import 'character_screen_loaded_body_item.dart';
class CharactersScreenList extends StatelessWidget {
  const CharactersScreenList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProvider>(
      builder: (context, characterProvider, _) {
        if (characterProvider.characters.isNotEmpty) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: characterProvider.searchTextController.text.isEmpty
                ? characterProvider.characters.length
                : characterProvider.searchedForCharacters.length,
            itemBuilder: (ctx, index) {
              return CharacterScreenLoadedBodyItem(
                character: characterProvider.searchTextController.text.isEmpty
                    ? characterProvider.characters[index]
                    :  characterProvider.searchedForCharacters[index],
              );
            },
          );

        } else {
          return const ShowLoadingIndicator();
        }
      },
    );  }
}
