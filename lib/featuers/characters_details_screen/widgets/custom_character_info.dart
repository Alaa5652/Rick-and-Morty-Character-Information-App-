import 'package:flutter/material.dart';

import '../../../core/constance/color.dart';

class CustomCharacterInfo extends StatelessWidget {
  const CustomCharacterInfo(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
              color: AppColors.umber,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: value,
            style: const TextStyle(
              color: AppColors.umber,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
