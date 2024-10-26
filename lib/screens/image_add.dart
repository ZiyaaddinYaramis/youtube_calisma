import 'package:flutter/material.dart';

class ImageAdd extends StatelessWidget {
  const ImageAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resim Ekleme - Image'),
        backgroundColor: Colors.indigo.shade200,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //================================================================
            const SizedBox(height: 20, width: 20),
            // SizedBox: Boşluk ekler. (genişlik: width, yükseklik: height)
            //================================================================
            const Text(
                "const Text('.....') Seklinde Text Widget olusturulabilir."),
            //================================================================
            const SizedBox(height: 20, width: 20),
            //================================================================
            Image.asset(
              'assets/images/resim.jpg',
              width: 250,
              height: 450,
            ),
            //================================================================
            const SizedBox(height: 10, width: 10),
            //================================================================
            Image.asset('assets/images/logo.png', width: 200, height: 200),
            //================================================================
            const SizedBox(height: 10, width: 10),
            //================================================================
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              width: 100,
              height: 100,
            ),
            //================================================================
            const SizedBox(height: 10, width: 10),
            //================================================================
            TextButton(
              // Text Button
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  foregroundColor: Colors.white),

              child: const Text('Anasayfaya Dön'),
            )
          ],
        ),
      ),
    );
  }
}
