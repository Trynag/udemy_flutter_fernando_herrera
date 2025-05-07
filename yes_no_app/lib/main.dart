import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void  main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColorIndex: 1).theme( ),
      debugShowCheckedModeBanner: false,
      title: 'Yes No App',
      home: Scaffold(
          body: ChatScreen(),
        ),
      );
  }
}