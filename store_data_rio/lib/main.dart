import 'package:flutter/material.dart';
import 'dart:convert';
import './model/pizza.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String pizzaString = '';

  List<Pizza> myPizzas = [];

  int appCounter = 0;

  String documentsPath = '';
  String tempPath = '';

  Future getPaths() async {
    if (kIsWeb) {
      setState(() {
        documentsPath = 'Not available on web';
        tempPath = 'Not available on web';
      });
    } else {
      final docDir = await getApplicationDocumentsDirectory();
      final tempDir = await getTemporaryDirectory();
      setState(() {
        documentsPath = docDir.path;
        tempPath = tempDir.path;
      });
    }
  }

  Future readAndWritePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    appCounter = prefs.getInt('appCounter') ?? 0;
    appCounter++;
    await prefs.setInt('appCounter', appCounter);

    setState(() {
      appCounter = appCounter;
    });
  }

  Future deletePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() {
      appCounter = 0;
    });
  }

  Future<List<Pizza>> readJsonFile() async {
    String myString = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/pizzalist_broken.json');
    // setState(() {
    //   pizzaString = myString;
    // });
    List pizzaMapList = jsonDecode(myString);
    List<Pizza> myPizzas = [];
    for (var pizza in pizzaMapList) {
      Pizza myPizza = Pizza.fromJson(pizza);
      myPizzas.add(myPizza);
    }
    // return myPizzas;
    String json = convertToJSON(myPizzas);
    print(json);
    return myPizzas;
  }

  @override
  void initState() {
    super.initState();
    readJsonFile().then((value) {
      setState(() {
        myPizzas = value;
      });
    });
    readAndWritePreference();
    getPaths();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JSON')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: myPizzas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(myPizzas[index].pizzaName),
                  subtitle: Text(myPizzas[index].description),
                );
              },
            ),
          ),
          Text('You have opened the app $appCounter times'),
          ElevatedButton(
            onPressed: () {
              deletePreference();
            },
            child: const Text('Reset counter'),
          ),
          Text('Doc Path: $documentsPath'),
          Text('Temp Path: $tempPath'),
        ],
      ),
    );
  }

  String convertToJSON(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((pizza) => jsonEncode(pizza)).toList());
  }
}
