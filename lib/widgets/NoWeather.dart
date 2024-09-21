import 'package:flutter/material.dart';

class Noweather extends StatelessWidget {
  const Noweather({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('there is no weather 😞 start',
          style: TextStyle(
      fontSize: 30
          ),
          
          ),
        Text('searshing now 🔍',
        style: TextStyle(
      fontSize: 28
        ),
        ),
        ],
      ),
    );
  }
}