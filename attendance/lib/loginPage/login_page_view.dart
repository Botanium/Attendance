import 'package:attendance/anim/fade_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import './login_page_viewmodel.dart';
// @todo #67 solve all remaining 195 lint errors.
class LoginPageView extends LoginPageViewModel {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
            child: ListView(
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeIn(
                          child: Text(
                            "Welcome,",
                            style: TextStyle(
                                color: Colors.white, fontSize: 30.0),
                          ),
                          delay: 1000,
                        ),
                        FadeIn(
                          child: Container(
                            child: Text(
                              "Let's get you in..",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 35.0),
                            ),
                            padding: EdgeInsets.only(top: 25),
                          ),
                          delay: 1500,
                        )
                      ],
                    ),
                    padding: EdgeInsets.only(left: 15, top: 130),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 120),
                      child: Center(
                        child: RaisedButton(
                            padding:
                            EdgeInsets.only(top: 3.0, bottom: 3.0, left: 6.0),
                            color: const Color(0xFFFFFFFF),
                            onPressed: () =>
                                signInUser()
                                    .then((FirebaseUser user) =>
                                    handleUser(user)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons/g-logo.png',
                                  fit: BoxFit.fill,
                                  height: 40.0,
                                ),
                                Container(
                                    padding:
                                    EdgeInsets.only(left: 15.0, right: 10.0),
                                    child: Text(
                                      "Sign in with Google",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            )),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          "Having troubles?",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: OutlineButton(
                          child: Text("Go offline"),
                          onPressed: () =>
                              Navigator.of(context).pushNamed('/offline'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0))),
                    ),
                  )
                ])
              ],
            )));
  }
}
