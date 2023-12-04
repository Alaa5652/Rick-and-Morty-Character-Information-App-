import 'package:flutter/material.dart';

import '../constance/color.dart';
class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Can\'t connect .. check internet',
              style: TextStyle(
                fontSize: 22,
                color: MyColors.lightSalmon,
              ),
            ),
            Image.asset('assets/images/undraw_treasure_of9i.png')
          ],
        ),
      ),
    );
  }
}
