import 'package:flutter/material.dart';

import '../../../core/constance/color.dart';
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Characters',
      style: TextStyle(color: AppColors.umber),
    );
  }
}
