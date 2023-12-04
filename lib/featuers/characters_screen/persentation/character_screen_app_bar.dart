import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constance/color.dart';
import '../../../logic/provider/character_provider.dart';
import '../widget/app_bar_title.dart';
import '../widget/search_field.dart';

class CharacterScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CharacterScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final characterProvider = Provider.of<CharacterProvider>(context);
    return AppBar(
      backgroundColor: AppColors.lightSalmon,
      leading: characterProvider.isSearching
          ? BackButton(
              color: AppColors.umber,
              onPressed: () {
                characterProvider.searchTextController.clear();
                Navigator.pop(context);
                characterProvider.setIsSearching(false);
              },
            )
          : Container(),
      title: characterProvider.isSearching
          ? const SearchField()
          : const AppBarTitle(),
      actions: characterProvider.isSearching
          ? [
              IconButton(
                onPressed: () {
                  characterProvider.searchTextController.clear();
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.clear, color: AppColors.umber),
              )
            ]
          : [
              IconButton(
                onPressed: () {
                  ModalRoute.of(context)!
                      .addLocalHistoryEntry(LocalHistoryEntry(
                    onRemove: () {
                      characterProvider.searchTextController.clear();
                      characterProvider.setIsSearching(false);
                    },
                  ));

                  characterProvider.setIsSearching(true);
                },
                icon: const Icon(
                  Icons.search,
                  color: AppColors.umber,
                ),
              )
            ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
