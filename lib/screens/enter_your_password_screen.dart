import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EnterYourPassword extends StatefulWidget {
  EnterYourPassword({Key key}) : super(key: key);

  _EnterYourPasswordState createState() => _EnterYourPasswordState();
}

class _EnterYourPasswordState extends State<EnterYourPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode passwordNode = FocusNode();
  final FocusNode confirmPasswordNode = FocusNode();
  bool _hidePassword = true;
  //bool _rememberMe = false;
  bool _hidePassword2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Enter Your Password',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
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
                          Icons.lock,
                          color: Theme.of(context).primaryColor,
                          size: 70,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New Password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  child: TextFormField(
                    focusNode: passwordNode,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'password',
                      prefixIcon:
                          Icon(Icons.lock_outline, color: Color(0xffFF5252)),
                      suffixIcon: IconButton(
                        padding: const EdgeInsets.only(right: 16.0),
                        icon: Icon(
                          _hidePassword
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash,
                          color: Theme.of(context).primaryColor,
                        ),
                        splashColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            _hidePassword = !_hidePassword;
                          });
                        },
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    //keyboardType: TextInputType.phone,
                    onFieldSubmitted: (_) {
                      passwordNode.unfocus();
                      confirmPasswordNode.requestFocus();
                    },
                    obscureText: _hidePassword,
                    validator: (value) {
                      if ((value?.isEmpty ?? true) || value.length < 8) {
                        return 'Please enter a valid password';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New Password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  child: TextFormField(
                    focusNode: confirmPasswordNode,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'confirm password',
                      prefixIcon: Icon(Icons.lock, color: Color(0xffFF5252)),
                      suffixIcon: IconButton(
                        padding: const EdgeInsets.only(right: 16.0),
                        icon: Icon(
                          _hidePassword2
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash,
                          color: Theme.of(context).primaryColor,
                        ),
                        splashColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            _hidePassword2 = !_hidePassword2;
                          });
                        },
                      ),
                    ),
                    onFieldSubmitted: (_) {
                      confirmPasswordNode.unfocus();
                      _formKey.currentState.validate();
                    },
                    obscureText: _hidePassword2,
                    validator: (value) {
                      if ((value?.isEmpty ?? true) || value.length < 8) {
                        return 'Please enter a valid password';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 120.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Color(0xffFF5252),
                    padding: EdgeInsets.only(top: 15.0, bottom: 15),
                    onPressed: () {
                      Navigator.pushNamed(context, 'awesomescreen');
                    },
                    child: const Text(
                      'SET PASSWORD',
                      style: TextStyle(
                        fontSize: 18.0,
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
    );
  }
}
