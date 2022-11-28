import 'package:flutter/material.dart';
import 'package:help_car/Pages/Bat_Page.dart';
import 'package:help_car/Pages/Pneu_Page.dart';
import 'package:help_car/Pages/Temp_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool parateste = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escanear"),
        actions: [IconButton(onPressed: () {
          setState(() {
            parateste = !parateste;
          });
        }, icon: const Icon(Icons.add))],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: parateste ? Colors.green : Colors.red,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child:  parateste ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          ) : const Icon(
                            Icons.error,
                            color: Colors.white,
                          )
                        ),
                      ),
                       parateste ? const Text(
                        "O carro esta bem",
                        style: TextStyle(color: Colors.white),
                      ) : const Text(
                        "O carro esta com problemas",
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.763,
            color: Colors.grey[300],
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Container(
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.grey),
                                  child: const Icon(
                                    Icons.thermostat,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TempPage())),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Temperatuda do motor",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text("Verifique a temperatura do motor",
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color:  parateste? Colors.green: Colors.red),
                                  child: parateste ?  Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 17,
                                  ) : Icon(
                                    Icons.error_outline,
                                    color: Colors.white,
                                    size: 17,
                                  )),
                            ),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Container(
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.grey),
                                  child: const Icon(
                                    Icons.battery_saver,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BatPage())),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Bateria",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text("Verifique a condição da bateria",
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.green),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 17,
                                  )),
                            ),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Container(
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.grey),
                                  child: const Icon(
                                    Icons.car_repair,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PneuPage())),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Pneus",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text("Verifique a pressão nos pneus",
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.green),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 17,
                                  )),
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}