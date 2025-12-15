import 'package:flutter/material.dart';
import 'dart:convert';
import './model/pizza.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

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
  List<Pizza> myPizzas = [];
  String documentsPath = '';
  File? myFile;
  String fileText = '';

  final pwdController = TextEditingController();
  String myPass = '';

  static const _storage = FlutterSecureStorage();
  static const _myKey = 'myPass';
  static const _webErrorMessage =
      'File operations not available on web. Use SharedPreferences instead.';

  Future<void> writeToSecureStorage() async {
    await _storage.write(key: _myKey, value: pwdController.text);
  }

  Future<String> readFromSecureStorage() async {
    final value = await _storage.read(key: _myKey);
    return value ?? '';
  }

  Future<void> _readAndDisplayPassword() async {
    final value = await readFromSecureStorage();
    setState(() {
      myPass = value;
    });
  }

  Future<bool> writeFile() async {
    if (kIsWeb) {
      setState(() => fileText = _webErrorMessage);
      return true;
    }
    try {
      await myFile!.writeAsString('Margherita, Capricciosa, Napoli');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> getPaths() async {
    if (!kIsWeb) {
      final docDir = await getApplicationDocumentsDirectory();
      documentsPath = docDir.path;
    }
  }

  Future<void> readAndWritePreference() async {
    final prefs = await SharedPreferences.getInstance();
    final counter = prefs.getInt('appCounter') ?? 0;
    await prefs.setInt('appCounter', counter + 1);
  }

  Future<List<Pizza>> readJsonFile() async {
    final myString = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/pizzalist.json');
    final pizzaMapList = jsonDecode(myString) as List;
    return pizzaMapList
        .map((pizza) => Pizza.fromJson(pizza as Map<String, dynamic>))
        .toList();
  }

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    myPizzas = await readJsonFile();
    setState(() {});

    await readAndWritePreference();
    await getPaths();

    if (!kIsWeb) {
      myFile = File('$documentsPath/pizzas.txt');
      await writeFile();
    }
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
                final pizza = myPizzas[index];
                return ListTile(
                  title: Text(pizza.pizzaName),
                  subtitle: Text(pizza.description),
                );
              },
            ),
          ),
          if (fileText.isNotEmpty) Text(fileText),
          TextField(controller: pwdController),
          ElevatedButton(
            onPressed: writeToSecureStorage,
            child: const Text('Save Value'),
          ),
          ElevatedButton(
            onPressed: _readAndDisplayPassword,
            child: const Text('Read Value'),
          ),
          Text('Password: $myPass'),
        ],
      ),
    );
  }
}
