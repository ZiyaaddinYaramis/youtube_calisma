import 'package:flutter/material.dart';

class ContainerNewPage extends StatelessWidget {
  const ContainerNewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //================================================================
      // Width & Height (genişlik ve yükseklik)
      width: 200,
      height: 100,
      //================================================================
      // ! #################  Color  #################
      //color: Colors.indigo.shade200, // BoxDecoration ile aynı işlevi görür yani
      //BoxDecoration icindede ayni arguman var bu ikisi cakismamali.
      //Bu yüzden kullanmaya gerek yok. BoxDecoration kullaniyorsan
      //bunu kullanmayacaksin!  Aksi takdirde hata alırız.
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
        'Container',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
      ),
      //================================================================
    );
  }
}
