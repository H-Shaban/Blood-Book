import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/siginup_screen.dart';
import 'screens/guest_login_screen.dart';
import 'screens/verification_code_screen.dart';
import 'screens/enter_your_password_screen.dart';
import 'screens/awesome_screen.dart';
import 'screens/blood_camp_latest_news_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/profile_edit_screen.dart';
import 'screens/change_password_screen.dart';
import 'screens/contact_us_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xffFF5252),
        primarySwatch: Colors.blue,
      ),
      //home: Splash(),
      initialRoute: 'contactusscreen',
      routes: {
        '/': (context)=> Splash(),
        'siginup': (context)=> SiginUp(),
        'guestlogin': (context)=> GuestLogin(),
        'verificationcode': (context)=> VerificationCode(),
        'enteryourpasswordscreen': (context)=> EnterYourPassword(),
        'awesomescreen': (context)=> Awesome(),
        'bloodcamplatestnewsscreen': (context)=> BloodCampLatestNews(),
        'profilescreen': (context)=> Profile(),
        'profileeditscreen': (context)=> ProfileEdit(),
        'changepasswordscreen': (context)=> ChangePassword(),
        'contactusscreen': (context)=> ContactUs()
      },
    );
  }
}
