import 'package:flutter/material.dart';
import 'dart:convert';
import './model/pizza.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io';

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

  dynamic myFile;
  String fileText = '';

  Future<bool> writeFile() async {
    if (kIsWeb) {
      // On web, we can use SharedPreferences or local storage
      setState(() {
        fileText =
            'File operations not available on web. Use SharedPreferences instead.';
      });
      return true;
    }
    try {
      await myFile.writeAsString('Margherita, Capricciosa, Napoli');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> readFile() async {
    if (kIsWeb) {
      setState(() {
        fileText =
            'File operations not available on web. Use SharedPreferences instead.';
      });
      return true;
    }
    try {
      String contents = await myFile.readAsString();
      setState(() {
        fileText = contents;
      });
      return true;
    } catch (e) {
      return false;
    }
  }

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
    // getPaths();
    getPaths().then((_) {
      if (!kIsWeb) {
        myFile = File('$documentsPath/pizzas.txt');
        writeFile();
      }
    });
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
          ElevatedButton(
            child: const Text('Read File'),
            onPressed: () {
              readFile();
            },
          ),
          Text(fileText),
        ],
      ),
    );
  }

  String convertToJSON(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((pizza) => jsonEncode(pizza)).toList());
  }
}
