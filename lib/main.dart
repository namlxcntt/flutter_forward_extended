import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_forward_extend/application.dart';
import 'package:flutter_forward_extend/di/injection.dart';

void main() {
  bootStrap();
}

void bootStrap(){
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();
    runApp(const MyApplication());
  }, (Object error, StackTrace stack) async {
    debugPrint('Error -> ${error.toString()}');
    // await FlutterCrashlytics()
    //     .reportCrash(error, stackTrace, forceCrash: false);
  });
}
