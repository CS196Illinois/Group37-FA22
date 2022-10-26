import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page A Screen")),
      body: Container(
          alignment: Alignment.center,
          child: const Text(
            "Page A",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )),
    );
  }
}
