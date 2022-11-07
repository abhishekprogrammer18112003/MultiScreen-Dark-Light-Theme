import 'package:flutter/material.dart';
import 'package:learningflutter/provide.dart';
import 'package:learningflutter/themechange.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => countprovider(),
          ),
          ChangeNotifierProvider(
            create: (_) => sliderprovider(),
          ),
          ChangeNotifierProvider(
            create: (_) => themechanger(),
          ),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeprovider = Provider.of<themechanger>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeprovider.thememode,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(brightness: Brightness.dark),
            home: const Themechange(),
          );
        }));
  }
}
