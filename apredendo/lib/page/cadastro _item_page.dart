import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Adicionar Usuário'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: _controller1,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Nome:* ',
                suffixIcon: IconButton(
                  onPressed: _controller1.clear,
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _controller2,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Matricula:* ',
                suffixIcon: IconButton(
                  onPressed: _controller2.clear,
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
