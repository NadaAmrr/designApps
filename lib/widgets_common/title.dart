import 'package:flutter/material.dart';
class TitleWidget extends StatelessWidget {
  String title;
  String subtitle;
  Color color;
  Function onTap;
  TitleWidget({super.key, required this.title, required this.subtitle, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
        InkWell(
          onTap: () {
            onTap();
          },
          child: Row(
            children: [
              Text(subtitle, style: TextStyle(color: color, fontWeight: FontWeight.w700, fontSize: 18),),
              Icon(Icons.arrow_forward_ios, color: color,),
            ],
          ),
        ),
      ],
    );
  }
}
