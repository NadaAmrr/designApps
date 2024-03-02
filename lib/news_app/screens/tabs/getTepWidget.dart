import 'package:flutter/material.dart';

class GetTipWidget extends StatelessWidget {
  const GetTipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/doctor.png"),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Connect with doctors & get suggestions",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const Text(
                  "Connect now and get expert insights ",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('View detail', style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffb75fd0), // Set the background color to purple
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Set border radius to 30
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
