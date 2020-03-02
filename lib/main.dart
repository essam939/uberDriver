import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foralldriver/screens/about.dart';
import 'package:foralldriver/screens/account.dart';
import 'package:foralldriver/screens/documents.dart';
import 'package:foralldriver/screens/earning.dart';
import 'package:foralldriver/screens/earningsDetails.dart';
import 'package:foralldriver/screens/forgetPassword.dart';
import 'package:foralldriver/screens/homePage.dart';
import 'package:foralldriver/screens/loginPage.dart';
import 'package:foralldriver/screens/notifications.dart';
import 'package:foralldriver/screens/payment.dart';
import 'package:foralldriver/screens/perks.dart';
import 'package:foralldriver/screens/profilePage.dart';
import 'package:foralldriver/screens/promotions.dart';
import 'package:foralldriver/screens/recentTransactionsPage.dart';
import 'package:foralldriver/screens/registerPage.dart';
import 'package:foralldriver/screens/settings.dart';
import 'package:foralldriver/screens/splashScreen.dart';
import 'package:foralldriver/screens/welcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: './',
     routes: {
       '/':(context)=>AnimatedSplashScreen(),
       '/welcomePage':(context)=>WelcomePage(),
       '/home':(context)=>MyHomePage(),
       '/loginPage':(context)=>LoginPage(),
       '/registerPage':(context)=>RegisterPage(),
       '/forgetPassword':(context)=>ForgetPassword(),
       '/accountPage':(context)=>AccountPage(),
       '/notificationsPage':(context)=>NotificationsPage(),
       '/earningsPage':(context)=>EarningsPage(),
       '/recentTransactionsPage':(context)=>RecentTransactionsPage(),
       '/profilePage':(context)=>ProfilePage(),
       '/earningsDetailsPage':(context)=>EarningsDetailsPage(),
       '/recentTransactionsPage':(context)=>RecentTransactionsPage(),
       '/promotionsPage':(context)=>PromotionsPage(),
       '/aboutPage':(context)=>AboutPage(),
       '/settingsPage':(context)=>SettingsPage(),
       '/paymentPage':(context)=>PaymentPage(),
       '/documents':(context)=>Documents(),
       '/perks':(context)=>Perks(),
     },
    );
  }
}

