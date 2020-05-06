import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(BusinessApp());
}

class BusinessApp extends StatelessWidget {
  static const linkedInURL = 'https://www.linkedin.com/in/matthewzegar/';
  static const githubURL = 'https://github.com/mzegar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/matt.png'),
                  backgroundColor: Colors.white,
                ),
                Text(
                  'Matthew Zegar',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'SOFTWARE DEVELOPER',
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'SourceSans',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () => launch(linkedInURL),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.web,
                            color: Colors.teal,
                          ),
                          title: Text(
                            linkedInURL,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.teal.shade900,
                              fontFamily: 'SourceSans',
                            ),
                          ),
                        ),
                      ),
                    )),
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () => launch(githubURL),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.code,
                            color: Colors.teal,
                          ),
                          title: Text(
                            githubURL,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.teal.shade900,
                              fontFamily: 'SourceSans',
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ))));
  }
}
