import 'package:flutter/material.dart';

import '../components/molecules/app_navigation_bar.dart';
import '../components/molecules/mobile_main_app_bar.dart';
import '../components/templates/home_mobile_template.dart';
import '../components/templates/trending_mobile_template.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const screenRoute = '/main';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget currentTemplate = Container();
    switch (currentIndex) {
      case 0:
        currentTemplate = const HomeMobileTemplate();
        break;
      case 1:
        currentTemplate = const TrendingMobileTemplate();
        break;
      case 2:
        break;
      case 3:
        break;
      default:
        currentTemplate = const HomeMobileTemplate();
        break;
    }
    return Scaffold(
      appBar: const MobileMainAppBar(),
      bottomNavigationBar: AppNavigationBar(
        currentIndex: currentIndex,
        onItemPressed: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        child: currentTemplate,
      ),
    );
  }
}
