import 'package:flutter/material.dart';

class TempPage extends StatefulWidget {
  const TempPage({Key? key}) : super(key: key);

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Temperatura do motor"),
        ),
        body: Row(
          children: [
            Icon(
              Icons.thermostat,
              size: 100,
              color: Colors.red,
            ),
            Text(
              "Temperatura atual: 90ºC",
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}