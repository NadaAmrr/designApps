import 'package:flutter/material.dart';

class RateWidget extends StatelessWidget {
  String title;
  String subtitle;
  IconData icon;
  RateWidget({super.key, required this.title, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 25, color: Colors.blueGrey,),
            const SizedBox(width: 3,),
            Text(title),
          ],
        ),
        Text(subtitle, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
      ],
    );
  }
}
