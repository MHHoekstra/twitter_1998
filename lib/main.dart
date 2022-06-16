import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_1998/core/screens/main_screen.dart';
import 'package:twitter_1998/core/screens/profile_screen.dart';
import 'package:twitter_1998/design_system/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter 1998',
      theme: ThemeData(
        textTheme: GoogleFonts.vt323TextTheme(),
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: AppColors.grey,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const MainScreen());
          case MainScreen.screenRoute:
            return MaterialPageRoute(builder: (_) => const MainScreen());
          case ProfileScreen.screenRoute:
            return MaterialPageRoute(
                builder: (_) => const ProfileScreen(), fullscreenDialog: true);
        }
      },
    );
  }
}
