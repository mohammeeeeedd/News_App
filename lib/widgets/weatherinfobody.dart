import 'package:flutter/material.dart';

class Weatherinfobody extends StatelessWidget {
  const Weatherinfobody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Alexandria',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        ),
         Text('updated at 23 : 46',
        style: TextStyle(
          fontSize: 16,
        ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16 ),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/cloudy.png"),
              Text('17',
              style: TextStyle(fontSize: 30),
              ),
              Column(
                children: [
                  Text("Maxtemp : 24"),
                  Text('Mintemp : 26')
                ],
              )
            ],
          ),
          
        ),
        SizedBox(height: 20,),
        Text('Ligh Rain',
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),)
      ],
    );
  }
}