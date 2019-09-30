import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  ProfileEdit({Key key}) : super(key: key);

  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  String dropdownValue = "A+";

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
              Container(
                child: Form(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Name',
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
                          //hintText: 'Email',
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
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Email Adress',
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
                          //hintText: 'Email',
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
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Blood Group',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        //padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.80,
                          ),
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: dropdownValue,
                          /*icon: Icon(Icons.arrow_downward),*/
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                          underline: Container(
                            height: 2,
                            //color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>["A+", "A-", "AB", "O+", "O-"]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'State',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        //padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.80,
                          ),
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: dropdownValue,
                          /*icon: Icon(Icons.arrow_downward),*/
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                          underline: Container(
                            height: 2,
                            //color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>["A+", "A-", "AB", "O+", "O-"]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'City',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        //padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.80,
                          ),
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: dropdownValue,
                          /*icon: Icon(Icons.arrow_downward),*/
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                          underline: Container(
                            height: 2,
                            //color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>["A+", "A-", "AB", "O+", "O-"]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Area',
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
                          //hintText: 'Email',
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'profileeditscreen');
                          },
                          child: const Text(
                            'SAVE CHANGE',
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
