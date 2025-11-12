import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_secao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Widgets de conteúdo')),
        body: Column(
          children: [
            TituloSecao(titulo: 'Textos'),
            Text(
              'Texto estilizado',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Texto com estilo padrão'),

            Divider(),
            TituloSecao(titulo: 'Imagem'),
            Image.network('https://picsum.photos:/id/237/200/300'),

            Divider(),
            TituloSecao(titulo: 'Ícone'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite, color: Colors.red, size: 32),
                Icon(Icons.star, color: Colors.amber, size: 32),
                Icon(Icons.settings, color: Colors.blue, size: 32),
              ],
            ),

            Divider(),
            TituloSecao(titulo: 'Elevated button'),
            ElevatedButton(onPressed: () {}, child: Text('Clique aqui')),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
