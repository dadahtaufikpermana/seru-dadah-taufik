import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final double? height;
  final int? maxLines;

  const TextInputWidget({
    Key? key,
    required this.label,
    required this.controller,
    this.height = 60,
    this.maxLines = 1
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      height: height,
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: label,
          border: UnderlineInputBorder(),
        ),
      ),
    );
  }
}
