import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constance/color.dart';
import '../../../core/constance/valus.dart';
import '../../../logic/provider/character_provider.dart';
class SearchField extends StatelessWidget {
  const SearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Provider.of<CharacterProvider>(context, listen: false).searchTextController,
      cursorColor: MyColors.lightSalmon,
      decoration: const InputDecoration(
        hintText: 'Find a character...',
        border: InputBorder.none,
        hintStyle: TextStyle(color: MyColors.umber, fontSize: 18),
      ),
      style:  const TextStyle(color: MyColors.umber, fontSize: 18),
      onChanged:(String searchedCharacter) {
      Provider.of<CharacterProvider>(context, listen: false).addSearchedForItemsToSearchedList(searchedCharacter);
    }
    );
  }
}
