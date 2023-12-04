import 'package:flutter/material.dart';

import '../../../data/models/characters.dart';
import 'character_details.dart';
import '../widgets/custom_character_info.dart';
import '../widgets/custom_divider.dart';

class CharacterDetailsScreenBody extends StatelessWidget {
  const CharacterDetailsScreenBody({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCharacterInfo(
                  title: 'Job : ',
                  value: character.origin!.name!,
                ),
                const CustomDivider(endIndent: 315),
                CustomCharacterInfo(
                    title: 'Appeared in : ', value: character.species ?? ""),
                const CustomDivider(endIndent: 250),
                CustomCharacterInfo(
                    title: 'Seasons : ', value: character.episode!.first),
                const CustomDivider(endIndent: 280),
                CustomCharacterInfo(
                    title: 'Status : ', value: character.status ?? ""),
                const CustomDivider(endIndent: 300),
                CustomCharacterInfo(
                    title: 'Actor/Actress : ', value: character.name ?? ""),
                const CustomDivider(endIndent: 235),
              ],
            ),
          ),
          const SizedBox(
            height: 500,
          )
        ],
      ),
    );
  }
}
