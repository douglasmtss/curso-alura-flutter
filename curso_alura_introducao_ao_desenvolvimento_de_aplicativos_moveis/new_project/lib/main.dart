import 'package:flutter/material.dart';
import 'package:new_project/screens/widgets_conteudo.dart';
import 'package:new_project/screens/widgets_layout.dart';

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
      home: ListContents(),
    );
  }
}

class ListContents extends StatelessWidget {
  ListContents({super.key});

  final List<CatalagoItem> secoes = [
    CatalagoItem(
      titulo: 'Widgets de Conteúdo',
      icone: Icons.text_fields,
      descricao: 'Exemplos de widgets básicos com o Text, Image, Icon...',
      destino: WidgetsConteudo(),
    ),
    CatalagoItem(
      titulo: 'Widgets de Layout',
      icone: Icons.view_agenda,
      descricao: 'Exemplos / demostrações de padding, column, flexible...',
      destino: WidgetsLayout(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catálado de Widgets')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        childAspectRatio: 0.85,
        children: secoes
            .map(
              (item) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item.destino),
                ),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Icon(item.icone, size: 48, color: Colors.blue),
                        Text(
                          item.titulo,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          item.descricao,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: Colors.green),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class CatalagoItem {
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalagoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}
