
import 'package:flutter/material.dart';
class RegtangleWidget extends StatelessWidget {
  const RegtangleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey
      ),
    );
  }
}
