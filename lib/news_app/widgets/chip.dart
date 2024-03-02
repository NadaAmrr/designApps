import 'package:flutter/material.dart';
class ChipWidget extends StatelessWidget {
  String text;
  bool isSelected;
  Function onSelect;
  ChipWidget({super.key, required this.text, required this.isSelected, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      shape: const StadiumBorder(side: BorderSide(
        color: Color(0xff6941C6),
      )),
      showCheckmark: false,
      labelStyle: const TextStyle(color: Color(0xff6941C6)),
      label: Text(text),

      selected: isSelected,
      onSelected: (newValue) {
        onSelect(newValue);
      },
      selectedColor: const Color(0xffD6BBFB),
      disabledColor: Colors.grey,
      elevation: 0,
    );
  }
}
