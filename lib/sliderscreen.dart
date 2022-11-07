import 'package:flutter/material.dart';
import 'package:learningflutter/provide.dart';
import 'package:provider/provider.dart';

class SliderHomePage extends StatefulWidget {
  const SliderHomePage({super.key});

  @override
  State<SliderHomePage> createState() => _SliderHomePageState();
}

class _SliderHomePageState extends State<SliderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<sliderprovider>(builder: (context, value, child) {
            return Slider(
                min: 0.0,
                max: 1.0,
                value: value.value,
                onChanged: (val) {
                  value.setvalue(val);
                });
          }),
          Consumer<sliderprovider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green.withOpacity(value.value),
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.withOpacity(value.value),
                    height: 100,
                  ),
                )
              ],
            );
          }),
        ],
      )),
    );
  }
}
