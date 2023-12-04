import 'package:flutter/material.dart';

import '../../../core/constance/color.dart';
import '../../../core/constance/string_constace_app.dart';
import '../../../data/models/characters.dart';
class CharacterScreenLoadedBodyItem extends StatelessWidget {
  final Character character;

  const CharacterScreenLoadedBodyItem({Key? key, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: AppColors.pewterBlue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, characterDetailsScreen , arguments: character),
        child: GridTile(
          footer: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Text(
              '${character.name}',
              style: const TextStyle(
                height: 1.3,
                fontSize: 16,
                color: AppColors.platinum,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          child: Hero(
            tag: character.id!,
            child: Container(
              color: AppColors.keyLime,
              child: character.image!.isNotEmpty
                  ? FadeInImage.assetNetwork(
                width: double.infinity,
                height: double.infinity,
                placeholder:
                'assets/images/Animation - 1697379713784.gif',
                image: character.image!,
                fit: BoxFit.cover,
              )
                  : Image.asset('assets/images/Animation - 1697379713784.gif'),
            ),
          ),
        ),
      ),
    );
  }
}
