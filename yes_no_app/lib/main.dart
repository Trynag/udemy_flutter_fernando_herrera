import 'package:flutter/material.dart';

void  main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.green),
      debugShowCheckedModeBanner: false,
      title: 'Yes No App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yes No'),
          centerTitle: true,
        ),
        body: Center(
            child: FilledButton.tonal(
              onPressed: (){}, 
              child: const Text('Click me'),
            ),
          )
        ),
      );
  }
}