import 'package:flutter/material.dart';
import 'package:youtube_calisma/screens/list_view_builder_separated2.dart';

class ListViewBuilderSeparated extends StatefulWidget {
  const ListViewBuilderSeparated({super.key});

  @override
  State<ListViewBuilderSeparated> createState() =>
      _ListViewBuilderSeparatedState();
}

class _ListViewBuilderSeparatedState extends State<ListViewBuilderSeparated> {
  List elemanlar = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: const Text('Veri Listeleme'),
      ),
      body:

          //********************************************************************/

          /* ListView.builder(
      itemCount: elemanlar
          .length, // elemanlar listesinin uzunluğu kadar eleman oluşturur.
      // itemBuilder: (context, index) => Text(elemanlar[index]), // elemanlar listesinin index. elemanını ekrana yazdırır.
      itemBuilder: (context, index) => ListTile(
        title: Text(elemanlar[index]),
        subtitle: Text('Eleman: $index'),
        trailing: const Icon(Icons.chevron_right),
        leading: const Icon(Icons.account_box_rounded),
        tileColor: Colors.amber.shade100,
      ),
    )*/

          //********************************************************************/
          ListView.separated(
        itemCount: elemanlar
            .length, // elemanlar listesinin uzunluğu kadar eleman oluşturur.
        // itemBuilder: (context, index) => Text(elemanlar[index]), // elemanlar listesinin index. elemanını ekrana yazdırır.
        itemBuilder: (context, index) => ListTile(
          title: Text(elemanlar[index]),
          subtitle: Text('Eleman: $index'),
          trailing: const Icon(Icons.chevron_right),
          leading: const Icon(Icons.account_box_rounded),
          tileColor: Colors.amber.shade100,
          //onTap: () => print('Tıklandı: $index'), // Sorun uyarisini gidermek icin kapattim.
        ),
        separatorBuilder: (context, index) =>
            const Divider(thickness: 2, color: Colors.black, height: 0),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ListViewBuilderSeparated2()));
        },
        style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
        child: const Text(' Lesson 19 Ek bilgiler'),
      ),
    );
  }
}
