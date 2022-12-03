import 'package:flutter/material.dart';
import 'package:rideshare/constants/theme.dart';

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
    Dialog contactDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        height: 300.0,
        width: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Contact Info',
                style: lightTheme.textTheme.headline1,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Name: Jack Wang',
                style: lightTheme.textTheme.bodyText2,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Phone number: 888-888-8888',
                style: lightTheme.textTheme.bodyText2,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 50.0)),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Got it!',
                style: lightTheme.textTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ride Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'lib/assets/images/stlouis.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'From St.Louis To Champaign',
                      style: lightTheme.textTheme.headline1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      '10:00am',
                      style: lightTheme.textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 180),
                      child: Text(
                        'I\'m offering a ride from St.Louis to Champaign. Please contact me if you are intereted. Thanks!',
                        style: lightTheme.textTheme.bodyText2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
              child: SizedBox(
                width: 300,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => contactDialog);
                  },
                  style: TextButton.styleFrom(
                    // ignore: deprecated_member_use
                    backgroundColor: lightTheme.buttonColor,
                    onSurface: Colors.black,
                  ),
                  child: Text(
                    'Show Contact Info',
                    style: lightTheme.textTheme.headline2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
