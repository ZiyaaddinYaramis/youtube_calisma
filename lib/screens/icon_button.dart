import 'package:flutter/material.dart';

class IconAndButton extends StatelessWidget {
  const IconAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon ve Buton'),
        backgroundColor: Colors.indigo.shade200,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //================================================================
              ElevatedButton(
                  // Normal buton
                  onPressed: () => print('Butona tikladiniz'),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                  child: const Text('Eleveated Button',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple))),
              //================================================================
              const SizedBox(height: 20, width: 20),
              //================================================================
              const Icon(
                // Icon
                Icons.arrow_forward_ios_rounded,
                color: Colors.blue,
                size: 50,
              ),
              //================================================================
              const SizedBox(height: 20, width: 20),
              //================================================================
              IconButton(
                // Icon Button
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.blue,
                  size: 50,
                ),
              ),
              //================================================================
              TextButton(
                // Text Button
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Anasayfaya Dön'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
