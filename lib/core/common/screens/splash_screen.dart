import 'package:bloc_clean_architecture_template/core/common/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const path = '/splashScreen';
  static const name = 'splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;
  final int animationInSeconds = 1;

  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        animate = true;
        setState(() {});
      },
    );

    _navigateWithDelay(SnackbarCustomizationScreen.path);
  }

  void _navigateWithDelay(String location) {
    Future.delayed(Duration(seconds: animationInSeconds + 1), () {
      if (mounted) {
        context.go(location);
      }
    });
  }

  
  @override
  Widget build(BuildContext context) {
    // color identical with flutter native splash`s color property
    const Color bgColor = Colors.white;
    return   AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle( // works android only
        statusBarColor: bgColor, // top
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: bgColor, // bottom
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child:  Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: AnimatedScale(
            duration:  Duration(seconds: animationInSeconds),
            curve: Curves.easeInOut,
            scale: !animate ? 1 : 7,
            child: const FlutterLogo(
              style: FlutterLogoStyle.stacked,
            ),
          ),
        ),
      ),
    );
  }
}