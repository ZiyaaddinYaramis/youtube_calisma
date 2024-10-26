import 'package:flutter/material.dart';
import 'package:youtube_calisma/screens/home_screen.dart';

void main() {
  // main() fonksiyonu uygulamanın başlangıç noktasıdır.
  runApp(
      const Uygulamam()); // runApp(Uygulamam()) fonksiyonu uygulamayı başlatır.
}

class Uygulamam extends StatelessWidget {
  // StatelessWidget sınıfından türetilen Uygulamam sınıfı oluşturuldu.
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(fontFamily: "Nunito"), // Uygulama genelinde fontu ayarlar.
      home: const HomeScreen(), // Uygulamanın başlangıç ekranı.
    );
  }
}
