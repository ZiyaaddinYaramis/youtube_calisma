import 'package:flutter/material.dart';

// main() fonksiyonu uygulamanın başlangıç noktasıdır.
void main() {
  runApp(
      Uygulamam()); // runApp(Uygulamam()) fonksiyonu sabit görunumuzu başlatır.
}

// StatelessWidget sınıfindan türetilen Uygulamam sınıfı oluşturuldu.

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(221, 241, 239, 239),
        appBar: AppBar(
          title: Text('Uygulamam',
              style:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.white)),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/images/resim.jpg', width: 200, height: 200),
              Text("merhaba"),
              Image.asset('assets/images/logo.png', width: 200, height: 200),
              Text("merhaba Dunya"),
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Not1: StatelessWidget sinifi ile sabit bir görunumu olusturuyoruz.
// Not2: MaterialApp sinifi ile uygulamanin temel yapısını olusturuyoruz.
// Not3: Scaffold sinifi ile uygulamamizin stillerinin oturmasini sagliyoruz.
// Not4: AppBar sinifi ile uygulamamizin baslik kismini yani ust bar olusturuyoruz.
// Not5: Text sinifi ile ekrana bir metin yazdırıyoruz.
