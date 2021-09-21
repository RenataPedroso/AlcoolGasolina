import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text("Álcool ou Gasolina?"),
    actions: [
    IconButton(
    onPressed: () {}, icon: const Icon(Icons.refresh),
    color: Colors.black,
    )
    ],
    flexibleSpace: Container(
    decoration: const BoxDecoration(gradient: LinearGradient(
    begin: Alignment.topLeft, end: Alignment.bottomRight,
    colors: <Color>[Colors.green, Colors.blue, Colors.yellow])),
    ),
    ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40,),
            const Icon(
              Icons.local_gas_station,
              size: 140.0,
              color: Colors.blue,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.blue, fontSize: 26.0),
              decoration: const InputDecoration(
                  labelText: "Valor do Álcool",
                  labelStyle: TextStyle(color: Colors.blue)
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.blue, fontSize: 26.0),
              decoration: const InputDecoration(
                  labelText: "Valor do Gasolina",
                  labelStyle: TextStyle(color: Colors.blue)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                  height: 60.0,
                  child: ElevatedButton( //PARAMOS AQUI
                    onPressed: () { },
                    child: const Text("Verificar"),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}