import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

import '../../../core/widgets/loading_indicator.dart';
import '../../../core/widgets/no_internet_widget.dart';
import '../widget/characters_screen_list.dart';

class CharacterScreenBody extends StatelessWidget {
  const CharacterScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
          ) {
        final bool connected = connectivity != ConnectivityResult.none;

        if (connected) {
          return const CharactersScreenList();
        } else {
          return const NoInternetWidget();
        }
      },
      child: const ShowLoadingIndicator(),
    );
  }
}
