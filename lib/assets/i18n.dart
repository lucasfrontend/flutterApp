import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  // set json file directory
  // default value is ['lib/i18n']
  LocalJsonLocalization.delegate.directories = ['lib/i18n'];

  return MaterialApp(
    localizationsDelegates: [
      // delegate from flutter_localization
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      // delegate from localization package.
      LocalJsonLocalization.delegate,
    ],
    home: HomePage(),
  );
}