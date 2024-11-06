import 'package:flutter/material.dart';

class ImageAdd extends StatelessWidget {
  const ImageAdd({super.key});

  @override
  Widget build(BuildContext context) {
    // Tekrarlanan SizedBox widget'larını bir değişken olarak tanımlayın
    const sizedBox = SizedBox(height: 20, width: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resim Ekleme - Image'),
        backgroundColor: Colors.indigo.shade200,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Boşluk ekler
              sizedBox,
              // Text widget
              const Text(
                  "const Text('.....') Şeklinde Text Widget oluşturulabilir."),
              // Boşluk ekler
              sizedBox,
              // Asset image
              Image.asset(
                'assets/images/resim.jpg',
                width: 250,
                height: 450,
              ),
              // Boşluk ekler
              const SizedBox(height: 10, width: 10),
              // Asset image
              Image.asset('assets/images/logo.png', width: 200, height: 200),
              // Boşluk ekler
              const SizedBox(height: 10, width: 10),
              // Network image
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 100,
                height: 100,
              ),
              // Boşluk ekler
              const SizedBox(height: 10, width: 10),
              // Text Button
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Anasayfaya Dön'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
