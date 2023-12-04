import 'package:flutter/material.dart';
import 'package:rick_and_morty/featuers/characters_screen/widget/characters_screen_build.dart';

import '../../../core/constance/color.dart';
import 'characters_screen_list.dart';
class CharacterScreenLoadedBody extends StatelessWidget {
  const CharacterScreenLoadedBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: MyColors.platinum,
        child:  const Column(
          children: [
            CharactersScreenList(),
          ],
        ),
      ),
    );
  }
}
