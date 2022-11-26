import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Item_1.dart';
import 'package:flutter_application_1/pages/Item_2.dart';
import 'package:flutter_application_1/pages/Register.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/Sign_up.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //localización
      //Indico dónde va a funcionar
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      //Establece idiomas soportados
      supportedLocales: const [ Locale('es'), Locale('en')],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'item_1': (BuildContext context) => Item_1(),
        'item_2': (BuildContext context) => Item_2(),
        'item_3': (BuildContext context) => Register(),
        'item_4': (BuildContext context) => Login(),
        'sign_up': (BuildContext context) => SignUp()
      }
    );
  }
}

/*

nombre: firebase-getx-app
identificador unico: fir-getx-f40d5

*/