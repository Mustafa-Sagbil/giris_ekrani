import 'package:flutter/material.dart';
import 'package:kullanici_girisi/views/appbar.dart';
import 'package:kullanici_girisi/views/giris_ekran_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage(title: "Kullanici Girişi"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Baslik(),
      body: BilgiGirisi(),
      backgroundColor: Colors.white,
    );
  }
}
