
import 'package:flutter/material.dart';

class MoodyWidget extends StatelessWidget {
  String text;
  String image;
  Function onTap;
   MoodyWidget({super.key, required this.text, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18, color: Color(0xff000000)),
          )
        ],
      ),
    );
  }
}