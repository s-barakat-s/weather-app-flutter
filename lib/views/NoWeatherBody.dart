import 'package:flutter/material.dart';

class NoWeateherBody extends StatelessWidget {
  const NoWeateherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'there is no weather 😔 start',
            style: TextStyle(fontSize: 21),
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(fontSize: 21),
          )
        ],
      ),
    );
  }
}
