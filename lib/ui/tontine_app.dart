import 'package:flutter/material.dart';
import 'package:tontineo_mobile_app/data/model/user.dart';
import 'package:tontineo_mobile_app/ui/home/home/invite_members_page.dart';
import 'package:tontineo_mobile_app/ui/home/home/tontine_contribution_page.dart';
import 'package:tontineo_mobile_app/auth/login/tontine_login_page.dart';
import 'package:tontineo_mobile_app/ui/splash/splash_screen.dart';
import 'package:tontineo_mobile_app/ui/auth/authentication_page.dart';
import 'package:tontineo_mobile_app/ui/auth/login/log_in.dart';
import 'package:tontineo_mobile_app/ui/auth/register/sign_up.dart';

import 'package:tontineo_mobile_app/ui/home/home/tontine_group_creation.dart';
<<<<<<< HEAD
=======
import 'package:tontineo_mobile_app/ui/home/home/tontines/dashboard_page.dart';
>>>>>>> 20e0e6aa764be41920990cc18678bdef58d04e8e

import 'package:tontineo_mobile_app/ui/home/tontine_home_page.dart';
import 'package:tontineo_mobile_app/ui/home/settings/tontine_settings_page.dart';
import 'package:tontineo_mobile_app/ui/splash/splash_screen.dart';

class TontineoApp extends StatefulWidget {
  const TontineoApp({Key? key}) : super(key: key);

  @override
  _TontineoAppState createState() => _TontineoAppState();
}

class _TontineoAppState extends State<TontineoApp> {

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tontineo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/signup': (context) => const SignupScreen(),
        '/login': (context) => const LoginScreen(),
<<<<<<< HEAD
        '/dashboard': (context) => const SplashScreen (),        
        '/home': (context) => TontineHomePage(user: user),
        '/settings': (context) => const SettingsPage(),
        '/create-tontine': (context) => TontineGroupCreation(),
        '/invite_members': (context) => InviteMembersPage(),
        '/contributions': (context) => RecordContributions(),
=======
        '/dashboard': (context) => const DashboardPage(),        
        '/home': (context) => TontineHomePage(),
        '/settings': (context) => const SettingsPage(),

        '/invite_members': (context) => InviteMembersPage(),
        '/contributions': (context) => const TontineContributions(),

        '/contributions': (context) => TontineContributions(),

>>>>>>> 20e0e6aa764be41920990cc18678bdef58d04e8e
      },
    );
  }
}

class DashboardPage {
  const DashboardPage();
}
