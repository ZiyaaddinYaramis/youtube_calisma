import 'package:flutter/material.dart';

// main() fonksiyonu uygulamanın başlangıç noktasıdır.
void main() {
  runApp(
      const Uygulamam()); // runApp(Uygulamam()) fonksiyonu sabit görunumuzu başlatır.
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

//##########################################################
//####################### APPBAR ###########################
//##########################################################
          appBar: AppBar(
            title: const Text('Uygulamam',
                style: TextStyle(
                    fontWeight: FontWeight.w300, color: Colors.white)),
            backgroundColor: Colors.indigo.shade200,
            centerTitle: true,
          ),

//##########################################################
//####################### BODY #############################
//##########################################################

          body: Center(
            child: Column(
              //Diger bir kullanım şekli Row() ile yatayda sıralama yapabiliriz.
              mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortalama
              crossAxisAlignment: CrossAxisAlignment.center, // Yatayda ortalama
              // .center, .start, .end, .spaceAround, .spaceBetween, .spaceEvenly
              // .start ile başlangıca, .end ile sona, .spaceAround ile etrafına, .spaceBetween ile aralarına, .spaceEvenly ile eşit aralıklara yerleştirme yapabiliriz.
//##########################################################
              children: [
                //Image.asset('assets/images/resim.jpg', width: 450, height: 450),
                const Text("merhaba"),
                //================================================================
                const SizedBox(
                    height:
                        20), // Araya boşluk ekler, Aslinda görunmez bir widget olusturur.
                //================================================================
                const Text("MERHABA"),
                //================================================================
                Image.asset('assets/images/logo.png', width: 200, height: 200),
                //================================================================
                Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  width: 200,
                  height: 200,
                ),
                //================================================================
                const SizedBox(height: 20),
                //================================================================
                ElevatedButton(
                    // Normal buton

                    onPressed: () => print('Butona tikladiniz'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo),
                    child: const Text('Eleveated Button',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple))),
                //================================================================
                const SizedBox(height: 20),
                //================================================================
                TextButton(
                  onPressed: () {},
                  child: const Text('Text Button'),
                  // style: TextButton.styleFrom(
                  //     backgroundColor: Colors.lightBlueAccent),
                ),
                //================================================================
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.blue,
                  size: 50,
                ),
                //================================================================
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
                //================================================================
              ],
//##########################################################
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

