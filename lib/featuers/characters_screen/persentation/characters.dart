import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../logic/provider/character_provider.dart';
import 'character_screen_app_bar.dart';
import 'character_screen_body.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<CharacterProvider>(context, listen: false).getAllCharacters();
    return Consumer<CharacterProvider>(
      builder: (context, characterProvider, child) {
        return const Scaffold(
          appBar: CharacterScreenAppBar(),
          body: CharacterScreenBody(),
        );
      },
    );
  }
}
