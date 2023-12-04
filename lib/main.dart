import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/data/repository/character_repo.dart';
import 'package:rick_and_morty/data/web_services/character_web_service.dart';
import 'package:rick_and_morty/logic/character_cubit.dart';

import 'core/constance/string_constace_app.dart';
import 'data/models/characters.dart';
import 'featuers/characters_details_screen/persentation/character_details.dart';
import 'featuers/characters_screen/persentation/characters.dart';
import 'logic/provider/character_provider.dart';

void main() {
  runApp(const RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CharacterProvider(
        CharactersRepository(CharactersWebServices()),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case kCharactersScreenRout:
              return MaterialPageRoute(
                builder: (_) => const CharactersScreen(),
              );
            case characterDetailsScreen:
              final character = settings.arguments as Character;
              return MaterialPageRoute(
                builder: (_) => CharacterDetailsScreen(
                  character: character,
                ),
              );
            default:
              return null;
          }
        },
      ),
    );
  }
}
