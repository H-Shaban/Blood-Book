import 'package:flutter/material.dart';

class BloodCampLatestNews extends StatefulWidget {
  BloodCampLatestNews({Key key}) : super(key: key);

  _BloodCampLatestNewsState createState() => _BloodCampLatestNewsState();
}

class _BloodCampLatestNewsState extends State<BloodCampLatestNews> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                'Today',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
