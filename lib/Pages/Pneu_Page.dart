import 'package:flutter/material.dart';

class PneuPage extends StatefulWidget {
  const PneuPage({Key? key}) : super(key: key);

  @override
  State<PneuPage> createState() => _PneuPageState();
}

class _PneuPageState extends State<PneuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pneus"),
        ),
        body: Column(
          children: const [
            SizedBox(
                height: 20,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Pneu dianteiro esquerdo: 30"))),
            SizedBox(
                height: 20,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Pneu dianteiro direito: 32"))),
            SizedBox(
                height: 20,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Pneu traseiro esquerdo: 29"))),
            SizedBox(
                height: 20,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Pneu traseiro direito: 31"))),
          ],
        ));
  }
}