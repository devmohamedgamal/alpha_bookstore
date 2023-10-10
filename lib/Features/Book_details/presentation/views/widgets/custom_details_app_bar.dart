
import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            )),
      ],
    );
  }
}
