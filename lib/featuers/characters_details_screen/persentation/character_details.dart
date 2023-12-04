import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constance/color.dart';

import '../../../data/models/characters.dart';
import 'character_details_screen_app_bar.dart';
import 'character_details_screen_body.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({super.key, required this.character});
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.platinum,
      body: CustomScrollView(
        slivers: [
          CharacterDetailsScreenAppBar(character: character),
          CharacterDetailsScreenBody(character: character),
        ],
      ),
    );
  }
}
