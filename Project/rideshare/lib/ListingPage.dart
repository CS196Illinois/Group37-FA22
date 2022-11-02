import 'package:rideshare/createListingPage.dart';

import '../constants/theme.dart';
import '../constants/util.dart';
import 'package:flutter/material.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({Key? key}) : super(key: key);

  @override
  _ListingPageState createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: lightTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: lightTheme.appBarTheme.backgroundColor,
        leading: IconButton(
            onPressed: () {
              print("profile button clicked");
            },
            icon: const Icon(Icons.person)),
        title: const Text("ListingPage"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                //print("add button clicked");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateListingPage(
                              title: 'Create Listing Page',
                            )));
              },
              icon: const Icon(Icons.add))
        ],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 0, 12),
                  child: Text(
                    'This Week',
                    style: lightTheme.textTheme.subtitle1,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  //first event card
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: lightTheme.scaffoldBackgroundColor,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x430F1113),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12, 4, 12, 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text('Ride Request',
                                      style: lightTheme.textTheme.bodyText2),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: 1,
                            decoration: BoxDecoration(
                                color: lightTheme.backgroundColor),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12, 4, 12, 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'From Champaign to Chicago',
                                    style: lightTheme.textTheme.subtitle1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12, 4, 12, 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Just give me a ride',
                                    style: lightTheme.textTheme.bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12, 4, 12, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: Icon(
                                    Icons.schedule,
                                    color: lightTheme.primaryColor,
                                    size: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Text('Oct. 11th 8:00am ',
                                      style: lightTheme.textTheme.bodyText1),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 0, 4),
                                  child: Icon(
                                    Icons.location_on_sharp,
                                    color: lightTheme.primaryColor,
                                    size: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Text('Champaign',
                                      style: lightTheme.textTheme.bodyText1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //second event card
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: InkWell(
                      onTap: () {
                        null;
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: lightTheme.scaffoldBackgroundColor,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x430F1113),
                              offset: Offset(0, 1),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12, 4, 12, 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                    child: Text('Ride Offer',
                                        style: lightTheme.textTheme.bodyText2),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              height: 1,
                              decoration: BoxDecoration(
                                  color: lightTheme.backgroundColor),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12, 4, 12, 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                    child: Text('From St.Louis to Champaign',
                                        style: lightTheme.textTheme.subtitle1),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12, 4, 12, 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                        'Just give me \$30 bucks for gas money',
                                        style: lightTheme.textTheme.bodyText2),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12, 4, 12, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 4),
                                    child: Icon(
                                      Icons.schedule,
                                      color: lightTheme.primaryColor,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                    child: Text('Oct. 12th 9:00pm',
                                        style: lightTheme.textTheme.bodyText1),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            24, 0, 0, 4),
                                    child: Icon(
                                      Icons.location_on_sharp,
                                      color: lightTheme.primaryColor,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                    child: Text('St.Louis',
                                        style: lightTheme.textTheme.bodyText1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
