import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

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
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffE2FFF1),
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                offset: Offset(0, 4),
                color: Colors.black12,
                spreadRadius: 2)
          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Image(
                image: AssetImage(
                  'assets/images/pic1.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: CircleAvatar(
                radius: 12,
                child: Image.asset('assets/images/avatar.png'),
              ),
            ),
            Positioned(
              top: 10,
              left: 25,
              child: CircleAvatar(
                radius: 12,
                child: Image.asset('assets/images/avatar.png'),
              ),
            ),
            Positioned(
              top: 10,
              left: 40,
              child: CircleAvatar(
                radius: 12,
                child: Image.asset('assets/images/avatar.png'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Everest",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Text(
                  "62 % complete",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                ),
              ),
            )
            // RoundedProgressBar(
            //   style:
            //       RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
            //   margin: EdgeInsets.symmetric(vertical: 16),
            //   borderRadius: BorderRadius.circular(24),
            //   height: 8,
            //   percent: 60,
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
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
                                  child:
                                      Image.asset('assets/images/avatar.png'),
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
                                          child: GestureDetector(
                                            onTap: () {
                                              print("Create new goal");
                                            },
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
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                boxShadow: [
                                                  BoxShadow(
                                                      blurRadius: 5,
                                                      offset: Offset(0, 5),
                                                      color: Colors.black12,
                                                      spreadRadius: 3)
                                                ],
                                              ),
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
          SlideUpWidget()
        ],
      ),
    );
  }
}

class SlideUpWidget extends StatefulWidget {
  SlideUpWidget({Key key}) : super(key: key);

  @override
  _SlideUpWidgetState createState() => _SlideUpWidgetState();
}

class _SlideUpWidgetState extends State<SlideUpWidget> {
  bool _isClosedSlidePanel = true;

  Widget _biuldRecPlacesItem() {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 15.0, top: 15, bottom: 15),
      child: Container(
        width: 250.0,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(0.0, 3)),
          ],
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28.0),
                topRight: Radius.circular(28.0),
              ),
              child: Image(
                image: AssetImage('assets/images/pic1.jpg'),
                height: 103,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Victoria Falls, Africa",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.more_vert,
                      color: Color(0xffD1D5E9),
                      size: 16,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: Text(
                "Victoria Falls is a waterfall on the Zambezi River in southern Africa, which provides habitat for several......",
                style: TextStyle(fontSize: 12, color: Color(0xff949AA8)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _biuldFriendItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20.0, bottom: 20),
      child: Container(
          width: MediaQuery.of(context).size.width - 70,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 4,
                  spreadRadius: 2,
                  offset: Offset(0.0, 4)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                        child: Image(
                          image: AssetImage('assets/images/pic1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: CircleAvatar(
                          radius: 15,
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 25,
                        child: CircleAvatar(
                          radius: 15,
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 40,
                        child: CircleAvatar(
                          radius: 15,
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "112",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.star_border,
                                size: 22,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: "Kyle",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00052A),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: " @Loch Ness",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff949AA8)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: "@Jenifer92",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).accentColor,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  " Hear we are most awaited journey end. Let see the moster 😍",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff949AA8)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: "Nolan",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff00052A),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: " Did you catch the moster? 😃",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff949AA8)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: "Anne",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff00052A),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: " Awsomeee 😆😍",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff949AA8)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      onPanelOpened: () {
        setState(() {
          _isClosedSlidePanel = false;
        });
      },
      onPanelClosed: () {
        setState(() {
          _isClosedSlidePanel = true;
        });
      },
      maxHeight: MediaQuery.of(context).size.height - 30,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      boxShadow: [BoxShadow(offset: Offset(-1, 0), color: Colors.grey)],
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
              ],
            ),
          ),
          _isClosedSlidePanel
              ? SizedBox(
                  height: 0,
                )
              : Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: SearchBarWidget(),
                ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Recomonded Places",
                  style: TextStyle(
                      color: Color(0xff949AA8),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 10),
                Text(
                  "24 New",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 230.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _biuldRecPlacesItem(),
                _biuldRecPlacesItem(),
                _biuldRecPlacesItem(),
                _biuldRecPlacesItem(),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Where Are Your Firends At",
              style: TextStyle(
                  color: Color(0xff949AA8),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              //padding: const EdgeInsets.all(8),
              children: <Widget>[
                _biuldFriendItem(context),
                _biuldFriendItem(context),
                _biuldFriendItem(context),
                _biuldFriendItem(context),
                _biuldFriendItem(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          size: 24,
          color: Colors.grey,
        ),
        hintText: 'Search places, lists, friends',
        alignLabelWithHint: true,
        hintStyle: TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 0.5,
            style: BorderStyle.none,
            color: Colors.grey,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(16),
        fillColor: Colors.white,
      ),
    );
  }
}
