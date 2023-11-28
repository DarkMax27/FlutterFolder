import 'package:flutter/material.dart';
// El uso del statefulwidget 
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterState();
}

class _CounterState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Scream"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),

// El uso de los ternarios es muy util en estos casos cuando se tiene que evaluar algo, en vez de hacer un if.

              Text('Click${ clickCounter == 1 ? '':'s'}', style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCounter++;
            // El setState se usa para hacer los cambios en la aplicacion.
            setState(() {});
          },
          child: const Icon(Icons.plus_one),
        ));
  }
}
