import 'package:flutter/material.dart';

class NullSafety extends StatefulWidget {
  const NullSafety({super.key});

  @override
  State<NullSafety> createState() => _NullSafetyState();
}

class _NullSafetyState extends State<NullSafety> {
  //List? veriler = null;
  /*
  Dart dilinde, bir degiskeni null olarak baslatmak gereksizdir.
  Cunku nullable (?) olarak tanimlanan degiskenler varsayilan olarak null deger alir.
  */
  // List? veriler = [
  //   'eleman 1',
  //   'eleman 2'
  // ]; // Null safety ile birlikte bu şekilde tanımlama yapılabilir.

  List? veriler;

  //  Eğer ? eklenmezse değişkene null atanamaz ve derleyici hata verir.

  int x = 5; // değişkeni non-nullable olduğu için null değeri alamaz.
  int?
      y; // ile y değişkeni nullable olarak tanımlanır. int? y = 5; gibi bir değer de atanabilir, yani nullable bir değişken null dışında bir değer de alabilir.

  // Null-aware Operatörler (??, ?., !)

  // ?? operatörü: Bu operatör, null değerine alternatif bir değer atamak için kullanılır.

  //x = y ?? 0; // Eğer y null ise x'e 0 atanır, değilse y'nin değeri atanır.

  // ?. operatörü: Eğer değişken null ise hata almamak için kullanılır.

  //int? result = y?.toInt(); // y null ise result da null olur, değilse y'nin integer değeri atanır.

  // ! operatörü (Null Assertion):  Değişkenin null olmadığından kesinlikle eminsen ! operatörünü kullanabilirsin. Ancak dikkatli kullanılmalı, çünkü null olduğunda hata verir.

  //int result = y!; // Eğer y null ise runtime error oluşur; null değilse değeri atanır.

  @override
  Widget build(BuildContext context) {
    veriler ??= [
      'eleman 1',
      'eleman 2'
    ]; // Eger veriler icinde eleman yoksa (??=), 'eleman 1', 'eleman 2' elemanlarini ata.

    //veriler ??= ['eleman 1', 'eleman 2'];  ==  if (veriler == null) veriler = ['eleman 1', 'eleman 2'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[300],
          title: const Text('Null Safety'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(veriler.toString()),
              Text(veriler![0]),
              Text(veriler?[0] ??
                  "null"), // Eğer veriler[0] null ise "null" yazdırır.
              veriler == null
                  ? const Text("null")
                  : Text(veriler![0]) // Ternary operatörü
            ],
          ),
        ));
  }
}
