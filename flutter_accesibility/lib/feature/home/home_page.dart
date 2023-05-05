import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ExcludeSemantics(
          child: Text('Accesibilidad'),
        ),
      ),
      body: MergeSemantics(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Número de clics',
              ),
              Semantics(
                liveRegion: true,
                child: Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _increment();
            },
            child: const Icon(
              Icons.add,
              semanticLabel: 'Añadir',
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _set0();
            },
            child: const Icon(
              Icons.exposure_zero,
              semanticLabel: 'reestablecer a 0',
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _decrement();
            },
            child: const Icon(
              Icons.remove,
              semanticLabel: 'quitar',
            ),
          ),
        ],
      ),
    );
  }

  void _increment() {
    _counter = _counter + 1;
    setState(() {});
  }

  void _decrement() {
    _counter = _counter - 1;
    setState(() {});
  }

  void _set0() {
    _counter = 0;
    setState(() {});
  }
}
