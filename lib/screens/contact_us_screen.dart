import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  ContactUs({Key key}) : super(key: key);

  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Edit Profile',
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
              Container(
                child: Form(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Subject',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      TextFormField(
                        //focusNode: emailNode,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDADADA)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          hintText: 'Enter your subject',
                          /*prefixIcon: Icon(
                            Icons.email,
                            color: Theme.of(context).primaryColor,
                          ),*/
                        ),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          //emailNode.unfocus();
                          //passwordNode.requestFocus();
                        },
                      ),
                     SizedBox(
                        height: 20.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Message',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      TextFormField(
                        //focusNode: emailNode,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDADADA)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          hintText: 'Write your text here',
                          /*prefixIcon: Icon(
                            Icons.email,
                            color: Theme.of(context).primaryColor,
                          ),*/
                        ),
                        maxLines: 10,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          //emailNode.unfocus();
                          //passwordNode.requestFocus();
                        },
                      ),
                      SizedBox(
                        height: 150.0,
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
                            'SEND',
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
            ],
          ),
        ),
      ),
    );
  }
}