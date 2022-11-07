import 'package:flutter/material.dart';
import 'package:learningflutter/sliderscreen.dart';
import 'package:provider/provider.dart';

import 'provide.dart';

class Themechange extends StatefulWidget {
  const Themechange({super.key});

  @override
  State<Themechange> createState() => _ThemechangeState();
}

class _ThemechangeState extends State<Themechange> {
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<themechanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose theme'),
      ),
      body: Column(children: [
        RadioListTile<ThemeMode>(
            title: const Text('Light Theme'),
            value: ThemeMode.light,
            groupValue: themeprovider.thememode,
            onChanged: themeprovider.settheme),
        RadioListTile<ThemeMode>(
            title: const Text('Dark Theme'),
            value: ThemeMode.dark,
            groupValue: themeprovider.thememode,
            onChanged: themeprovider.settheme),
        RadioListTile<ThemeMode>(
            title: const Text('System Theme'),
            value: ThemeMode.system,
            groupValue: themeprovider.thememode,
            onChanged: themeprovider.settheme),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SliderHomePage()));
          },
          child: Container(
            color: Colors.red,
            height: 30,
            width: 300,
            child: const Center(child: Text('click')),
          ),
        )
      ]),
    );
  }
}
