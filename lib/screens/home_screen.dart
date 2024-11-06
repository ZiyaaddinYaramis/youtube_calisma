import 'package:flutter/material.dart';
import 'package:youtube_calisma/screens/container_new_page.dart';
import 'package:youtube_calisma/screens/costum_card_lesson13.dart';
import 'package:youtube_calisma/screens/icon_button.dart';
import 'package:youtube_calisma/screens/image_add.dart';
import 'package:youtube_calisma/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(221, 241, 239, 239),
        appBar: AppBar(
          title: const Text('Flutter Dersleri'),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            // Column: Dikey düzende widget'ları sıralar. (Row: Yatay düzende sıralar)
            //================================================================
            //mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortalama
            crossAxisAlignment: CrossAxisAlignment.center, // Yatayda ortalama
            //================================================================
            children: [
              //================================================================
              const SizedBox(height: 10, width: 10),
              //================================================================
              TextButton(onPressed: () {}, child: const Text('Ders Notlari')),
              //================================================================
              const SizedBox(height: 10, width: 10),
              //================================================================
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageAdd()));
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child: const Text('Resim Ekleme - Image'),
              ),
              //================================================================
              const SizedBox(height: 10, width: 10),
              //================================================================
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IconAndButton()));
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child: const Text('Icon ve Button Widget Örnekleri'),
              ),
              //================================================================
              const SizedBox(height: 10, width: 10),
              //================================================================
              TextButton(
                  onPressed: () {}, child: const Text('Container Widget')),
              //================================================================
              const SizedBox(height: 10, width: 10),
              //================================================================
              // Container örneği (kutu içinde yazı)
              const ContainerNewPage(),
              //================================================================
              const SizedBox(height: 10, width: 10),
              // Padding: İçeriklerin kenar boşluklarını ayarlar.
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                ),
              ),
              const SizedBox(height: 10, width: 10),
              //================================================================
              const CostumCardView(), // Component örneği (costum_card_lesson13.dart)
              //================================================================
              const SizedBox(height: 10, width: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child:
                    const Text(' Video 28 Flutter Shared Preferences Example'),
              ),
              //================================================================
            ],
          ),
        ));
  }
}
