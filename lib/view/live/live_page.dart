import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Live Screen',
            style: TextStyle(color: Colors.white, fontSize: 24)),
      ),
    );
  }
}
