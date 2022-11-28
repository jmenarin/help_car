import 'package:flutter/material.dart';

class BatPage extends StatefulWidget {
  const BatPage({Key? key}) : super(key: key);

  @override
  State<BatPage> createState() => _BatPageState();
}

class _BatPageState extends State<BatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Temperatura do motor"),
        ),
        body: Row(
          children: const [
            Icon(
              Icons.battery_saver,
              size: 100,
              color: Colors.red,
            ),
            Text(
              "A bateria esta em otimo estado",
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}