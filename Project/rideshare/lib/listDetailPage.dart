import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.title});

  final String title;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('From St. Louis to Champaign',
                style: TextStyle(color: Colors.black45)),
            Text(
              '10:00am',
              style: TextStyle(color: Colors.purple),
            ),
            Text(
                'Im offering a ride from St. Louis to Champaign. Please contact me if interested. Thanks!',
                style: TextStyle(color: Colors.black45)),
          ],
        ));
  }
}
