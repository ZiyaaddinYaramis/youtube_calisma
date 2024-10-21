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
                style: TextStyle(
                    fontWeight: FontWeight.w300, color: Colors.white)),
            backgroundColor: Colors.indigo.shade200,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              //Diger bir kullanım şekli Row() ile yatayda sıralama yapabiliriz.

              mainAxisAlignment: MainAxisAlignment.start, // Dikeyde ortalama
              crossAxisAlignment: CrossAxisAlignment.center, // Yatayda ortalama
              // .center, .start, .end, .spaceAround, .spaceBetween, .spaceEvenly
              // .start ile başlangıca, .end ile sona, .spaceAround ile etrafına, .spaceBetween ile aralarına, .spaceEvenly ile eşit aralıklara yerleştirme yapabiliriz.

              children: [
                //Image.asset('assets/images/resim.jpg', width: 450, height: 450),
                Text("merhaba"),
                SizedBox(
                    height:
                        20), // Araya boşluk ekler, Aslinda görunmez bir widget olusturur.
                Text("MERHABA"),
                Image.asset('assets/images/logo.png', width: 200, height: 200),
                Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          )),
    );
  }
}

// Not1: StatelessWidget sinifi ile sabit bir görunumu olusturuyoruz.
// Not2: MaterialApp sinifi ile uygulamanin temel yapısını olusturuyoruz.
// Not3: Scaffold sinifi ile uygulamamizin stillerinin oturmasini sagliyoruz.
// Not4: AppBar sinifi ile uygulamamizin baslik kismini yani ust bar olusturuyoruz.
// Not5: Image.asset() fonksiyonu ile assets klasorundeki resimleri cagiriyoruz.
// Not6: Image.network() fonksiyonu ile internetten resim cagiriyoruz.
// Not7: Text() fonksiyonu ile metin olusturuyoruz.
// Not8: TextStyle() fonksiyonu ile metin stillerini belirliyoruz.
// Not9: FontWeight.w300 ile metin agirligini belirliyoruz.
// Not10: Color.fromARGB() fonksiyonu ile renk olusturuyoruz.
// Not11: Colors.indigo.shade200 ile renk olusturuyoruz.
// Not12: mainAxisAlignment ve crossAxisAlignment ile ortalama belirliyoruz.
// Not13: width ve height ile resim boyutunu belirliyoruz.
// Not14: fontFamily ile font belirliyoruz.
// Not15: centerTitle ile baslik metnini ortalıyoruz.
// Not16: runApp() fonksiyonu ile uygulamamizi baslatiyor

