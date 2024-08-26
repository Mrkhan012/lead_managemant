import 'package:flutter/material.dart';

class ClassScreen extends StatelessWidget {
  const ClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Class Screen',
            style: TextStyle(color: Colors.white, fontSize: 24)),
      ),
    );
  }
}
