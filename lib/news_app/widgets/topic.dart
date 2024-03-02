import 'package:flutter/material.dart';

class TopicWidget extends StatelessWidget {
  String title;
  String subtitle;
  Color color;
  String titleBtn;
  Color colorBtn;
  // String imagePath;
  TopicWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.color,
      required this.titleBtn,
      required this.colorBtn});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.orange,
        image: DecorationImage(
          image: AssetImage("assets/images/topic1.png"),
          fit: BoxFit.cover
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        // color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(5),
              child: Text(
                titleBtn,
                style: TextStyle(color: colorBtn, fontSize: 16, ),
              ),
            ),

            Text(
              title,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
            ),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
