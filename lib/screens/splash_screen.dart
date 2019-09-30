import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 150),
            Center(
              child: Icon(Icons.home, color: Colors.white, size: 100.0),
            ),
            Text(
              'Boold Book',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            SizedBox(
              height: 250,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.only(top: 15.0, bottom: 15),
                onPressed: () {
                  Navigator.pushNamed(context, 'siginup');
                },
                child: const Text('SIGN UP',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffFF5252),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: OutlineButton(
                color: Color(0xffFF5252),
                padding: EdgeInsets.only(top: 15.0, bottom: 15),
                borderSide: BorderSide(
                  color: Colors.white, //Color of the border
                  style: BorderStyle.solid, //Style of the border
                  width: 0.8, //width of the border
                ),
                onPressed: () {},
                child: GestureDetector(
                  onTap: () {Navigator.pushNamed(context, 'guestlogin'); },
                  child: Text(
                    'GUEST LOGIN',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
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
