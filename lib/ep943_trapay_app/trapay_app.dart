import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep943_trapay_app/src/screen/trapay_home_screen.dart';
import "package:flutter_localizations/flutter_localizations.dart";


class TrapayApp extends StatelessWidget {
  const TrapayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: "trapayApp",
      localizationsDelegates: [
        // AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
      ],
      home: TrapayHomeScreen(),
    );
  }
}
