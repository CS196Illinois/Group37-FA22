import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page A Screen")),
      body: Container(
          alignment: Alignment.center,
          child: const Text(
            "Page B",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )),
    );
  }
}
