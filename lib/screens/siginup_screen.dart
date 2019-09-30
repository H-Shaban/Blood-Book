import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SiginUp extends StatefulWidget {
  @override
  _SiginUpState createState() => _SiginUpState();
}

class _SiginUpState extends State<SiginUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode phoneNode = FocusNode();
  final FocusNode passwordNode = FocusNode();
  bool _hidePassword = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SIGIN UP',
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
                /*SizedBox(
                  height: 50,
                ),*/
                Center(
                  child:
                      Icon(Icons.home, color: Color(0xffFF5252), size: 100.0),
                ),
                Text(
                  'Boold Book',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: TextFormField(
                    focusNode: phoneNode,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone, color: Color(0xffFF5252)),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (_) {
                      phoneNode.unfocus();
                      passwordNode.requestFocus();
                    },
                    validator: (value) {
                      Pattern pattern = r'^(?:[+0]9)?[0-9]{10}$';
                      RegExp regex = new RegExp(pattern);
                      if ((value?.isEmpty ?? true) || !regex.hasMatch(value)) {
                        return 'Please enter a valid phone number';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextFormField(
                    focusNode: passwordNode,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      hintText: 'password',
                      prefixIcon: Icon(Icons.lock, color: Color(0xffFF5252)),
                      suffixIcon: IconButton(
                        padding: const EdgeInsets.only(right: 16),
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
                    onFieldSubmitted: (_) {
                      passwordNode.unfocus();
                      _formKey.currentState.validate();
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
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        return !_rememberMe;
                      },
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffFF5252),
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: _rememberMe
                            ? Icon(
                                Icons.check,
                                size: 18,
                              )
                            : Container(),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _rememberMe = !_rememberMe;
                        });
                      },
                      child: Text('Remember Me'),
                    ),
                    Spacer(),
                    Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
                      //Navigator.pushNamed(context, 'siginup');
                    },
                    child: const Text('SIGN UP',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Text(
                    'Or Connect With ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.white,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(4.0)),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(4.0)),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(4.0)),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(4.0)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Don\'t have an account?'),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'guestlogin');
                      },
                      child: Text(
                        'GUEST LOGIN',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
