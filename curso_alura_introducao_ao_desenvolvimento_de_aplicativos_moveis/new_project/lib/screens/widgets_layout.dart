import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_secao.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de Layout')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Padding'),
          Container(
            color: Colors.amberAccent,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text('Texto com padding interno de 20px'),
            ),
          ),

          Divider(),

          TituloSecao(titulo: 'Align'),
          Container(
            height: 80,
            color: Colors.amberAccent,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Alinhamento de texto'),
            ),
          ),

          Divider(),

          TituloSecao(titulo: 'Center'),
          Container(
            height: 80,
            color: Colors.amberAccent,
            child: Center(child: Text('Alinhamento de texto')),
          ),

          Divider(),

          TituloSecao(titulo: 'SizedBox'),
          Column(
            children: [
              Text('Texto acima'),
              SizedBox(height: 20),
              Text('Texto abaixo'),
            ],
          ),

          Divider(),

          TituloSecao(titulo: 'Expanded e Flexible (em Column)'),
          Container(
            height: 200,
            color: Colors.amberAccent,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Center(child: Text('Expanded')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    child: Center(child: Text('Flexible (flex: 2)')),
                  ),
                ),
              ],
            ),
          ),

          Divider(),

          TituloSecao(titulo: 'Expanded e Flexible (Row)'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.red,
                  child: Center(child: Text('Expanded')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 50,
                  color: Colors.green,
                  child: Center(child: Text('Flexible (flex: 2)')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
