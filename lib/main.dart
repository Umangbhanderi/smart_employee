import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/splash.dart';
import 'package:smart_employees/theme/theme_model.dart';

import 'login.dart';

void main() {
  // FlutterNativeSplash.removeAfter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(  
      create: (_) => ThemeModel(),
      child: Consumer(
        builder: (context, ThemeModel themeNotifire, child) {
          return MaterialApp(
            theme: themeNotifire.isDark? ThemeData.dark() : ThemeData.light(),
            // theme: ThemeData(brightness: Brightness.light),
            // darkTheme: ThemeData(brightness: Brightness.dark),
            // themeMode: ThemeMode.dark,
            // home: const Splash(),
            home:const Login(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
