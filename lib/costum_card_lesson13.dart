import 'package:flutter/material.dart';

class CostumCardView extends StatelessWidget {
  const CostumCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ]),
      alignment: Alignment.center,
      child: const Text(
        '13. Derste Flutter costom_card.dart Extract Widget ile olusturulan class kullanımı',
        style: TextStyle(fontSize: 11),
      ),
    );
  }
}
