import 'package:flutter/material.dart';

class GuestLogin extends StatefulWidget {
  GuestLogin({Key key}) : super(key: key);

  _GuestLoginState createState() => _GuestLoginState();
}

class _GuestLoginState extends State<GuestLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Guest Login',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
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
                        Icons.perm_phone_msg,
                        color: Theme.of(context).primaryColor,
                        size: 70,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Let\'s Verify Your Number',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'That\'s okay, just give us your mobile number, and you can create a password later',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Enter Mobile Number',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Center(
                child: Form(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 55.0, left: 55.0),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.done,
                            validator: (value) {
                              Pattern pattern = r'^(?:[+0]9)?[0-9]{10}$';
                              RegExp regex = new RegExp(pattern);
                              if ((value?.isEmpty ?? true) ||
                                  !regex.hasMatch(value)) {
                                return 'Please enter a valid phone number';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          'We Will Send You 4 Digit Verification Code',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 18.0,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            color: Color(0xffFF5252),
                            padding: EdgeInsets.only(top: 15.0, bottom: 15),
                            onPressed: () {
                              Navigator.pushNamed(context, 'verificationcode');
                            },
                            child: const Text(
                              'GET OTP',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
