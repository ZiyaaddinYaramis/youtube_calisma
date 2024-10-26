import 'package:flutter/material.dart';
import 'package:youtube_calisma/container_new_page.dart';
import 'package:youtube_calisma/costum_card_lesson13.dart';
import 'package:youtube_calisma/screens/icon_button.dart';
import 'package:youtube_calisma/screens/image_add.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            const Color.fromARGB(221, 241, 239, 239), // Arka plan rengi
        //####################### APPBAR ###########################
        appBar: AppBar(
          title: const Text('Flutter Dersleri'),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        //####################### BODY #############################
        body: Center(
          child: Column(
            // Column: Dikey düzende widget'ları sıralar. (Row: Yatay düzende sıralar)
            //================================================================
            //mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortalama
            crossAxisAlignment: CrossAxisAlignment.center, // Yatayda ortalama
            //================================================================
            children: [
              //================================================================
              const SizedBox(height: 20, width: 20),
              //================================================================
              TextButton(onPressed: () {}, child: const Text('Ders Notlari')),
              //================================================================
              const SizedBox(height: 20, width: 20),
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
              const SizedBox(height: 20, width: 20),
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
              const SizedBox(height: 20, width: 20),
              //================================================================
              TextButton(
                  onPressed: () {}, child: const Text('Container Widget')),
              //================================================================
              const SizedBox(height: 20, width: 20),
              //================================================================

              //================================================================
              // Container örneği (kutu içinde yazı)
              const ContainerNewPage(),
              //================================================================
              // Padding: İçeriklerin kenar boşluklarını ayarlar.
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                ),
              ),
              //================================================================
              // Component örneği (costum_card_lesson13.dart)
              const CostumCardView()
              //================================================================
            ],
          ),
        ));
  }
}
