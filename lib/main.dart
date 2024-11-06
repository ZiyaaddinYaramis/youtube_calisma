import 'package:flutter/material.dart';
import 'package:youtube_calisma/screens/home_screen.dart';

void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  // StatelessWidget sınıfından türetilen Uygulamam sınıfı oluşturuldu.
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Nunito"),
      home: const HomeScreen(),
    );
  }
}
