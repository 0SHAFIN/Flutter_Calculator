//import 'dart:html';

import 'package:flutter/material.dart';

class big_button extends StatelessWidget {
  final String name;
  final Color color;
  final VoidCallback onPressed;
  big_button(
      {super.key,
      required this.name,
      this.color = const Color(0xff757575),
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Container(
              width: 10,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                //shape: BoxShape.circle,
                color: color,
                //borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 26),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
