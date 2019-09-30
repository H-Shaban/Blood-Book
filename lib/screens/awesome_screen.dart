import 'package:flutter/material.dart';

class Awesome extends StatefulWidget {
  Awesome({Key key}) : super(key: key);

  _AwesomeState createState() => _AwesomeState();
}

class _AwesomeState extends State<Awesome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'Awsome!',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Ink(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.5),
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    //This keeps the splash effect within the circle
                    borderRadius: BorderRadius.circular(
                        1000.0), //Something large to ensure a circle
                    //onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.phone_android,
                        color: Theme.of(context).primaryColor,
                        size: 100.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 350,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  onPressed: () {
                    Navigator.pushNamed(context, 'siginup');
                  },
                  child: const Text(
                    'DONE',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
