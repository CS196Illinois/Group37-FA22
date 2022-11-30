import 'package:flutter/cupertino.dart';

class ListingEvent {
  final String? title;
  final String? description;
  final DateTime? date;
  final String? number;

  ListingEvent(
    @required this.title,
    @required this.description,
    @required this.date,
    @required this.number,
  );
}
