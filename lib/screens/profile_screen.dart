import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              SizedBox(
                height: 25.0,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    height: 120.0,
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                      child: Padding(
                        padding: EdgeInsets.all(85.0),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          //color: Colors.white,
                          //shape: BorderRadius.circular(10.0),
                          child: Icon(
                            Icons.camera_alt,
                            size: 30.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Upload profile picture',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Full Name',
                    style: TextStyle(
                      fontSize: 18.0,
                      //color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Hamada Abu Shaban',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Email Adress',
                    style: TextStyle(
                      fontSize: 18.0,
                      //color: Colors.grey,
                    ),
                  ),
                  Text(
                    'hshaban3@gmail.com',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Blood Group',
                    style: TextStyle(
                      fontSize: 18.0,
                      //color: Colors.grey,
                    ),
                  ),
                  Text(
                    'O-',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'State',
                    style: TextStyle(
                      fontSize: 18.0,
                      //color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Palestine',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'City',
                    style: TextStyle(
                      fontSize: 18.0,
                      //color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Gaza Strip',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Area',
                    style: TextStyle(
                      fontSize: 18.0,
                      //color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Dir El-Balah',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  onPressed: () {
                    Navigator.pushNamed(context, 'profileeditscreen');
                  },
                  child: const Text(
                    'EDIT',
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
