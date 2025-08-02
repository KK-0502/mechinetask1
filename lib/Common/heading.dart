import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String headings;
  const Heading({super.key, required this.headings});

  @override
  Widget build(BuildContext context) {
    return  Text(
          headings,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        );
  }
}