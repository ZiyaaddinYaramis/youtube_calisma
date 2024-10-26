import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Uygulamam'),
      backgroundColor: Colors.indigo.shade200,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
