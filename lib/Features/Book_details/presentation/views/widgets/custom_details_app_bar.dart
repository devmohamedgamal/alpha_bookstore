import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDetailsAppBar extends StatefulWidget {
  const CustomDetailsAppBar({super.key});

  @override
  State<CustomDetailsAppBar> createState() => _CustomDetailsAppBarState();
}

class _CustomDetailsAppBarState extends State<CustomDetailsAppBar> {
  int selctedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {
              if (selctedIndex == 0) {
                setState(() {
                  selctedIndex = 1;
                });
              } else {
                setState(() {
                  selctedIndex = 0;
                });
              }
            },
            icon: Icon(
              Icons.favorite,
              size: 40,
              color:
                  selctedIndex == 0 ? Colors.grey.withOpacity(0.4) : Colors.red,
            )),
      ],
    );
  }
}
