import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, required this.rate});
  final num rate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 130,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Icon(
                  Icons.star,
                  color: Colors.yellow,
                );
              },
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          const Text(
            "4.1",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
