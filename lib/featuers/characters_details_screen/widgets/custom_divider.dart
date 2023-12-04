import 'package:flutter/material.dart';

import '../../../core/constance/color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.endIndent});
  final double endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 30,
      endIndent: endIndent,
      color: AppColors.lightSalmon,
      thickness: 2,
    );
  }
}
