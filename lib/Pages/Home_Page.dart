import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escanear"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            Text("Ola"),
            Text("Ola"),
            Text("Ola"),
            Text("Ola"),
            Text("Ola"),
            Text("Ola"),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width / 3,
                height: 30,
                child: const Icon(
                  Icons.car_repair,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width / 3,
                height: 30,
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width / 3,
                height: 30,
                child: const Icon(
                  Icons.car_repair,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Center(
                  child: Column(
                    children: const [
                      Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      Text(
                        "O carro esta OK",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 50,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.car_crash),
                    Column(
                      children: const [
                        Text("Alertas de sistema do carro"),
                        Text(
                            "Verifique e identifique os códigos de erro do computador do carro"),
                      ],
                    ),
                    Icon(Icons.check),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 50,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.car_crash),
                    Column(
                      children: const [
                        Text("Bateria"),
                        Text("Verifique a condição da bateria"),
                      ],
                    ),
                    Icon(Icons.check),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
