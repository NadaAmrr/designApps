import 'package:flutter/material.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        color: const Color(0xffECFDF3),
        // color: Colors.deepPurple,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Positive vibes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey.shade700),
              ),
               SizedBox(
                 width: MediaQuery.of(context).size.width * 0.5,
                 child: Text(
                  "Boost your mood with positive vibes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black, overflow: TextOverflow.ellipsis),
                  maxLines: 2,
                               ),
               ),
              Row(
                children: [
                  Image.asset("assets/icons/ic_play.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("10 minutes"),
                ],
              ),
            ],
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset("assets/images/Walking the Dog.png"))
        ],
      ),
    );
  }
}
