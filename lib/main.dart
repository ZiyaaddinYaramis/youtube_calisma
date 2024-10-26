import 'package:flutter/material.dart';
import 'appbar_section.dart';
import 'container_new_page.dart';
import 'costum_card_lesson13.dart';

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
      home: Scaffold(
          backgroundColor:
              const Color.fromARGB(221, 241, 239, 239), // Arka plan rengi
          //####################### APPBAR ###########################
          appBar: const AppBarSection(),
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
                // Image.asset(
                //   'assets/images/resim.jpg',
                //   width: 450,
                //   height: 450,
                // ),
                //================================================================
                // SizedBox: Boşluk ekler. (genişlik: width, yükseklik: height)
                //const SizedBox(height: 20, width: 20),
                //================================================================
                //const Text("MERHABA"),
                //================================================================
                //const SizedBox(height: 20, width: 20),
                //================================================================
                //Image.asset('assets/images/logo.png', width: 200, height: 200),
                //================================================================
                //const SizedBox(height: 20, width: 20),
                //================================================================
                // Image.network(
                //   'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                //   width: 200,
                //   height: 200,
                // ),
                //================================================================
                //const SizedBox(height: 20, width: 20),
                //================================================================
                // ElevatedButton(
                //     // Normal buton
                //     onPressed: () => print('Butona tikladiniz'),
                //     style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.indigo),
                //     child: const Text('Eleveated Button',
                //         style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.purple))),
                //================================================================
                // const SizedBox(height: 20, width: 20),
                //================================================================
                // TextButton(
                //   onPressed: () {},
                //   child: const Text('Text Button'),
                //   // style: TextButton.styleFrom(
                //   //     backgroundColor: Colors.lightBlueAccent),
                // ),
                //================================================================
                //const SizedBox(height: 20, width: 20),
                //================================================================
                // const Icon(
                //   Icons.arrow_forward_ios_rounded,
                //   color: Colors.blue,
                //   size: 50,
                // ),
                //================================================================
                //const SizedBox(height: 20, width: 20),
                //================================================================
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.arrow_forward_ios_rounded,
                //     color: Colors.blue,
                //     size: 50,
                //   ),
                // ),
                //================================================================
                // Container örneği (kutu içinde yazı)
                const ContainerNewPage(),
                //================================================================
                //const SizedBox(height: 20, width: 20),
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
                CostumCardView()
                //================================================================
              ],
            ),
          )),
    );
  }
}







//##########################################################
//####################### AÇIKLAMALAR ######################
//##########################################################
// BoxDecoration: Bir container (kutu) widget'ı için dekorasyon yapar (arka plan, kenarlık, köşeler, gölge vs.).
// borderRadius: Container'ın köşelerini yuvarlar. (ör: BorderRadius.circular(20))
// border: Container'ın kenarlarını çizer. Border.all() ile tüm kenarlara aynı genişlik ve 
//renk, Border.symmetric() ile yatay ve dikey farklı ayarlar yapılabilir.
// boxShadow: Container'ın gölgelendirmesini ayarlar (color, offset, blurRadius gibi parametrelerle).
// image: Arkaplan resmi ekler. DecorationImage kullanılır.
// gradient: Geçişli arkaplan rengi ekler. LinearGradient, RadialGradient, SweepGradient seçenekleri bulunur.
// alignment: Container içindeki içeriklerin hizalamasını ayarlar (center, topLeft, bottomRight gibi).
// color: Container arka plan rengini ayarlar.
//##########################################################
