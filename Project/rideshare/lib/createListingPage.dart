import 'package:flutter/material.dart';

import 'constants/theme.dart';
//import 'package:table_calendar/table_calendar.dart';

class CreateListingPage extends StatefulWidget {
  const CreateListingPage({super.key, required this.title});

  final String title;

  @override
  State<CreateListingPage> createState() => _CreateListingPageState();
}

class _CreateListingPageState extends State<CreateListingPage> {
  DateTime dateTime = DateTime.now();
  void _emp() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2, '0');
    final minutes = dateTime.minute.toString().padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              // <-- SEE HERE
              height: 150,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter post details here...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextButton(
                  onPressed: () async {
                    pickDateTime();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: lightTheme.buttonColor,
                    onPrimary: Colors.black,
                  ),
                  child: Text(
                      '${dateTime.year} / ${dateTime.month} / ${dateTime.day}   $hours : $minutes'),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
            //   child: SizedBox(
            //     height: 50,
            //     width: 300,
            //     child: TextButton(
            //       onPressed: () async {
            //         final time = await pickTime();
            //         if (time == null) return;
            //         final newDateTime = DateTime(
            //           dateTime.year,
            //           dateTime.month,
            //           dateTime.day,
            //           time.hour,
            //           time.minute,
            //         );
            //         setState(() {
            //           dateTime = newDateTime;
            //         });
            //       },
            //       style: ElevatedButton.styleFrom(
            //         primary: lightTheme.buttonColor,
            //         onPrimary: Colors.black,
            //       ),
            //       child: Text('$hours : $minutes'),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  onPressed: _emp,
                  style: ElevatedButton.styleFrom(
                    primary: lightTheme.buttonColor,
                    onPrimary: Colors.black,
                  ),
                  child: const Text('Tag Location')),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  onPressed: _emp,
                  style: ElevatedButton.styleFrom(
                    primary: lightTheme.buttonColor,
                    onPrimary: Colors.black,
                  ),
                  child: const Text('Create Post')),
            )
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future pickDateTime() async {
    DateTime? date = await pickDate();
    if (date == null) return;

    TimeOfDay? time = await pickTime();
    if (time == null) return;

    final dateTime =
        DateTime(date.year, date.month, date.day, time.hour, time.minute);

    setState(() {
      this.dateTime = dateTime;
    });
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );
  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute),
      );
}
