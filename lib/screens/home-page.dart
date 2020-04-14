import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _biuldGoad() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 20, bottom: 20),
      child: Container(
        width: 140.0,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffE2FFF1),
        ),
        child: Stack(
          children: <Widget>[
            Text(
              "Create new Goal",
              style: TextStyle(
                color: Color(0xff949AA8),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Your Travel Goals",
                          style: TextStyle(
                            color: Color(0xff00052A),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        height: 200.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: 140.0,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE2FFF1),
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 8,
                                      left: 8,
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        child: Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Theme.of(context).primaryColor,
                                          boxShadow: [
                                            BoxShadow(blurRadius: 5,
                                            offset: Offset(-0.5, 1),
                                            color: Colors.grey)
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Create new Goal",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xff949AA8),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _biuldGoad(),
                            _biuldGoad(),
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
    );
  }
}
