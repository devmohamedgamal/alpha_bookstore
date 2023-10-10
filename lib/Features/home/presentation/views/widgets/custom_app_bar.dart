
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_manger.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.menu,
          size: 30,
        ),
        const Spacer(),
        const Icon(
          Icons.notifications_outlined,
          size: 30,
        ),
        const SizedBox(
          width: 14,
        ),
        CircleAvatar(
          child: Image.asset(AssetsManger.kProfileImage),
        ),
      ],
    );
  }
}
