import 'package:flutter/material.dart';

class ChildCards extends StatelessWidget {
  String text;
  ChildCards({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: const BorderRadius.all(Radius.circular(6))
      ),
      child: Text(text),
    );
  }
}
