import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).primaryColor,
              child: Stack(
                fit: StackFit.loose,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 40, top: 15),
                    child: Image.asset(
                      'assets/images/illustration.png',
                      height: 325,
                      width: MediaQuery.of(context).size.width - 20,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              child: Image.asset('assets/images/avatar.png'),
                            ),
                            Image.asset('assets/images/bell.png'),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Text(
                            "Hey Mike,",
                            style: TextStyle(
                              color: Color(0xFFF5F6FC),
                              fontWeight: FontWeight.w400,
                              fontSize: 21,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text(
                            "Wander Without Purpose",
                            style: TextStyle(
                              color: Color(0xff00052A),
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Your Travel Goals",
                        style: TextStyle(
                          color: Color(0xff00052A),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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
    );
  }
}
