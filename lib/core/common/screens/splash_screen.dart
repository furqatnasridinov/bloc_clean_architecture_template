import 'package:bloc_clean_architecture_template/core/common/screens/theme_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const path = '/splashScreen';
  static const name = 'splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateWithDelay(ThemeSettingsScreen.path);
  }

  void _navigateWithDelay(String location) {
    Future.delayed(const Duration(milliseconds: 2000), () {
      if (mounted) {
        context.go(location);
      }
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(child: FlutterLogo(
        size: 50,
        style: FlutterLogoStyle.horizontal,
      )),
    );
  }
}