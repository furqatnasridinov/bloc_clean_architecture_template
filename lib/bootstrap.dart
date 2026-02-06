import 'dart:async';
import 'dart:developer';

import 'package:bloc_clean_architecture_template/core/injection/injection.dart';
import 'package:bloc_clean_architecture_template/core/services/local_data_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
) async {

  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };


  //Bloc.observer = const AppBlocObserver();

  // Force Portrait Mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Normal Portrait
    DeviceOrientation.portraitDown, // Upside-Down Portrait
  ]);

  //await all initializations
  await initializations();

  //remove flutter splash screen after initializations
  //FlutterNativeSplash.remove();

  runApp(await builder());
}

//init async methods
Future<void> initializations() async {
  // init env 
  await dotenv.load();

  //initialize shared preferences
  await LocalDataStorage.init();
  //firebase initialization
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

   // initializes dependencies
  await initDependencies();
  // ... 
}
