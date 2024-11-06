import 'package:flutter/material.dart';

class ListViewBuilderSeparated2 extends StatefulWidget {
  const ListViewBuilderSeparated2({super.key});

  @override
  State<ListViewBuilderSeparated2> createState() =>
      _ListViewBuilderSeparated2State();
}

class _ListViewBuilderSeparated2State extends State<ListViewBuilderSeparated2> {
  List elemanlar = ["a", "b", "c", "d", "a", "b", "c", "d", "a", "b", "c", "d"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      // SingleChildScrollView: Ekrana sığmayan widgetler için kaydırma özelliği sağlar.
      // Baska bir anternatif ise ListView widgetidir.

      /*
      body: ListView(
        children: elemanlar
            .map(
              (e) => Container(
                padding: const EdgeInsets.all(10), // padding: dolgu
                margin: const EdgeInsets.all(10), // margin: kenar boşluğu
                decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(10)),
                child: Text(e),
              ),
            )
            .toList(),
      ),
      */

      child: Column(
        // 1. Anternatif
        // children: elemanlar.map((e) => Text(e)).toList(),
        // Text seklinde elemanlar listesini ekrana yazdırır.
        // .map() metodu ile elemanlar listesindeki her bir elemanı alır ve Text widgetine dönüştürür. .toList() metodu ile de bu dönüştürülen elemanları bir listeye çevirir.

        // 2. Anternatif
        // children: elemanlar
        //     .map(
        //       (e) => Container(
        //         padding: const EdgeInsets.all(10), // padding: dolgu
        //         margin: const EdgeInsets.all(10), // margin: kenar boşluğu
        //         decoration: BoxDecoration(
        //             color: Colors.green, borderRadius: BorderRadius.circular(10)),
        //         child: Text(e),
        //       ),
        //     )
        //     .toList(),
        // Container seklinde elemanlar listesini ekrana yazdırır.
        // .map() metodu ile elemanlar listesindeki her bir elemanı alır ve Container widgetine dönüştürür. .toList() metodu ile de bu dönüştürülen elemanları bir listeye çevirir.

        // 3. Anternatif (Tavsiye edilen)
        children:

            // List.generate(length, generator) yada List.generate(length, (index) => null)
            // Bu metot, belirtilen uzunlukta bir liste oluşturur ve listenin her bir elemanını belirtilen fonksiyon ile doldurur.

            List.generate(
          elemanlar.length,
          (index) => Container(
            padding: const EdgeInsets.all(10), // padding: dolgu
            margin: const EdgeInsets.all(10), // margin: kenar boşluğu
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Text(elemanlar[index]),
          ),
        ),
      ),
    ));
  }
}
