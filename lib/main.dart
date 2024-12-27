import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var mainText = 'Pink + White by Frank Ocean';
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    String subText = appState.current.asLowerCase;
    String subText2 = appState.mainText;
    var mainText =  '$subText but $subText2';
    return Scaffold(
      body: Column(
        children: [
          Text('Draft UI for AI Audio Analysis Project:'),
          Text(mainText),
                    // ↓ Add this.
          ElevatedButton(
            onPressed: () {
              print('Record');
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}