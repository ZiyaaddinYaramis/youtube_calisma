import 'package:flutter/material.dart';

// main() fonksiyonu uygulamanın başlangıç noktasıdır.
void main() {
  runApp(
      const Uygulamam()); // runApp(Uygulamam()) fonksiyonu uygulamayı başlatır.
}

// StatelessWidget sınıfından türetilen Uygulamam sınıfı oluşturuldu.
class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(fontFamily: "Nunito"), // Uygulama genelinde fontu ayarlar.
      home: Scaffold(
          backgroundColor:
              const Color.fromARGB(221, 241, 239, 239), // Arka plan rengi

          //##########################################################
          //####################### APPBAR ###########################
          //##########################################################
          appBar: AppBar(
            //================================================================
            title: const Text(
              'Uygulamam',
              style: TextStyle(
                fontWeight: FontWeight.w300, // Başlık font ağırlığı
                color: Colors.white, // Başlık rengi
              ),
            ),
            //================================================================
            backgroundColor: Colors.indigo.shade200, // AppBar arka plan rengi
            //================================================================
            centerTitle: true, // Başlığı ortalar
            //=================================================================
          ),

          //##########################################################
          //####################### BODY #############################
          //##########################################################
          body: Center(
            child: Column(
              // Column: Dikey düzende widget'ları sıralar. (Row: Yatay düzende sıralar)
              //================================================================
              mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortalama
              crossAxisAlignment: CrossAxisAlignment.center, // Yatayda ortalama
              //================================================================
              children: [
                //================================================================
                Image.asset(
                  'assets/images/resim.jpg',
                  width: 450,
                  height: 450,
                ),
                //================================================================
                // SizedBox: Boşluk ekler. (genişlik: width, yükseklik: height)
                const SizedBox(height: 20, width: 20),
                //================================================================
                const Text("MERHABA"),
                //================================================================
                const SizedBox(height: 20, width: 20),
                //================================================================
                Image.asset('assets/images/logo.png', width: 200, height: 200),
                //================================================================
                const SizedBox(height: 20, width: 20),
                //================================================================
                Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  width: 200,
                  height: 200,
                ),
                //================================================================
                const SizedBox(height: 20, width: 20),
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
                const SizedBox(height: 20, width: 20),
                //================================================================
                TextButton(
                  onPressed: () {},
                  child: const Text('Text Button'),
                  // style: TextButton.styleFrom(
                  //     backgroundColor: Colors.lightBlueAccent),
                ),
                //================================================================
                const SizedBox(height: 20, width: 20),
                //================================================================
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.blue,
                  size: 50,
                ),
                //================================================================
                const SizedBox(height: 20, width: 20),
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
                // Container örneği (kutu içinde yazı)
                Container(
                  //================================================================
                  // Width & Height (genişlik ve yükseklik)
                  width: 200,
                  height: 200,
                  //================================================================
                  // ! #################  Color  #################
                  //color: Colors.indigo.shade200, // BoxDecoration ile aynı işlevi görür yani BoxDecoration icindede ayni arguman var bu ikisi cakismamali. Bu yüzden kullanmaya gerek yok. BoxDecoration kullaniyorsan bunu kullanmayacaksin!  Aksi takdirde hata alırız.
                  //================================================================
                  // İçerik hizalama - Alignment
                  alignment: Alignment.center,
                  //================================================================
                  // ! #################  Padding  #################
                  padding: const EdgeInsets.all(20),
                  // "padding" argumani içerik ile kutu arasına boşluk ekler.
                  // Baslica Padding türleri:
                  // all; tüm kenarlara boşluk ekler
                  // symmetric; belirli bir eksen üzerinde boşluk ekler.
                  // symmetric; horizontal ve vertical olarak ikiye ayrılır.
                  // Horizontal; yatay eksen üzerinde boşluk ekler.
                  // Vertical; dikey eksen üzerinde boşluk ekler.
                  // only; sadece belirli bir kenara boşluk ekler.
                  // Only;Top, bottom, left, right...
                  //=====================================================================
                  // ! #################  Margin  #################
                  margin: const EdgeInsets.all(20),
                  // "margin" argumani kutu ile diğer arayüz elemanları arasına boşluk ekler.
                  // Baslica Margin türleri:
                  // all; tüm kenarlara boşluk ekler
                  // symmetric; belirli bir eksen üzerinde boşluk ekler.
                  // symmetric; horizontal ve vertical olarak ikiye ayrılır.
                  // Horizontal; yatay eksen üzerinde boşluk ekler.
                  // Vertical; dikey eksen üzerinde boşluk ekler.
                  // only; sadece belirli bir kenara boşluk ekler.
                  // Only;Top, bottom, left, right...

                  //margin: const EdgeInsets.symmetric(vertical: 20),
                  //margin: const EdgeInsets.symmetric(horizontal: 20),
                  //margin: const EdgeInsets.only(top: 20),
                  //margin: const EdgeInsets.only(bottom: 20),
                  //margin: const EdgeInsets.only(left: 20),
                  //margin: const EdgeInsets.only(right: 20),
                  //margin: const EdgeInsets.only(right: 20, left: 20),
                  //=====================================================================

                  // Dekorasyon - BoxDecoration
                  decoration: BoxDecoration(
                    //================================================================
                    color: Colors.indigo.shade200, // Arka plan rengi
                    //================================================================
                    // Köşe yuvarlama - BorderRadius
                    borderRadius: BorderRadius.circular(20),
                    // BorderRadius.circular: Tüm köşeleri yuvarlar
                    // BorderRadius.only: Belirli köşeleri yuvarlar
                    // BorderRadius.vertical: Dikey köşeleri yuvarlar
                    // BorderRadius.horizontal: Yatay köşeleri yuvarlar
                    //================================================================
                    // Kenarlık - Border
                    border: Border.all(
                      color: Colors.black, // Kenarlık rengi
                      width: 2, // Kenarlık genişliği
                    ),
                    // Border.all: Tüm kenarlar için aynı genişlik ve renk
                    // Border.symmetric: Yatay ve dikey kenarları ayrı ayrı ayarlar
                    // BorderDirectional: Belirli kenarlar için farklı ayarlar
                    //================================================================
                    // Gölge - BoxShadow
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(2, 2), // Gölge yönü
                        blurRadius: 5, // Gölge yayılma miktarı
                      ),
                      // Kutu gölgelendirme - BoxShadow
                      // offset: Gölgenin yönü (x ve y ekseninde)
                      // color: Gölgenin rengi
                      // blurRadius: Gölgenin ne kadar yayılacağını ayarlar
                    ],
                    //================================================================
                    // Arkaplan resmi - Image
                    image: const DecorationImage(
                      fit: BoxFit.cover, // Resmi tam oturtur
                      image: AssetImage('assets/images/logo.png'),
                    ),
                    // fit: Resmin nasıl sığacağını ayarlar (cover, contain, fill vs.)
                    // image: DecorationImage: Dekorasyon içinde resim ekler.
                    // alignment: Resmin konumunu ayarlar (center, top, bottom vs.)
                    // opacity: Resmin şeffaflığını ayarlar (0.0 - 1.0 arası)
                    //================================================================
                    // Gradient (Geçişli Renkler)
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    // LinearGradient: Çizgisel geçiş
                    // RadialGradient: Dairesel geçiş
                    // SweepGradient: Merkezden dışa doğru geçiş
                    //================================================================
                  ),
                  //================================================================
                  child: const Text(
                    'Ruwis',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  //================================================================
                ),
                //================================================================
                // Padding: İçeriklerin kenar boşluklarını ayarlar.
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                  ),
                ),
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
// border: Container'ın kenarlarını çizer. Border.all() ile tüm kenarlara aynı genişlik ve renk, Border.symmetric() ile yatay ve dikey farklı ayarlar yapılabilir.
// boxShadow: Container'ın gölgelendirmesini ayarlar (color, offset, blurRadius gibi parametrelerle).
// image: Arkaplan resmi ekler. DecorationImage kullanılır.
// gradient: Geçişli arkaplan rengi ekler. LinearGradient, RadialGradient, SweepGradient seçenekleri bulunur.
// alignment: Container içindeki içeriklerin hizalamasını ayarlar (center, topLeft, bottomRight gibi).
// color: Container arka plan rengini ayarlar.
//##########################################################
