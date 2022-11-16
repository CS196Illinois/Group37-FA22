import 'package:flutter/material.dart';
import 'package:rideshare/constants/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController? emailTextController;
  TextEditingController? passwordTextController;

  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailTextController?.dispose();
    passwordTextController?.dispose();
    super.dispose();
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: lightTheme.backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: lightTheme.backgroundColor,
                    ),
                    alignment: const AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Text(
                        'Sign In',
                        style: lightTheme.textTheme.headline2,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: lightTheme.backgroundColor,
                      ),
                      alignment: const AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: Text(
                          'Sign Up',
                          style: lightTheme.textTheme.headline1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Access your account.',
                    style: lightTheme.textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: FlutterFlowTheme.of(context).secondaryBackground,
                  color: lightTheme.backgroundColor,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 6,
                      color: Color(0x3416202A),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: TextFormField(
                    controller: emailTextController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Your email address',
                      labelStyle: lightTheme.textTheme.bodyText2,
                      hintStyle: lightTheme.textTheme.bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: const Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: lightTheme.backgroundColor,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                    ),
                    style: lightTheme.textTheme.bodyText2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: FlutterFlowTheme.of(context).secondaryBackground,
                  color: lightTheme.backgroundColor,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 6,
                      color: Color(0x3416202A),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: TextFormField(
                    controller: passwordTextController,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: lightTheme.textTheme.bodyText2,
                      hintStyle: lightTheme.textTheme.bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      // fillColor:
                      //     FlutterFlowTheme.of(context).secondaryBackground,
                      fillColor: lightTheme.backgroundColor,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: lightTheme.textTheme.bodyText2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: lightTheme.canvasColor,
                      ),
                      onPressed: null,
                      child: Text(
                        "Sign In",
                        style: lightTheme.textTheme.bodyText1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
