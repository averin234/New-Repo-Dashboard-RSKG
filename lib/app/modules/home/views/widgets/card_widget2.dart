import 'package:flutter/material.dart';

import 'card_kanan2.dart';
import 'card_kiri2.dart';

class CardWidget2 extends StatelessWidget {
  final String titleKanan;
  final String valueKanan;
  final String imageKanan;
  final String titleKiri;
  final String valueKiri;
  final String imageKiri;
  final int? color;
  final bool isUmumKanan;
  final String pathKanan;
  final bool isUmumKiri;
  final String pathKiri;
  CardWidget2({
    super.key,
    required this.titleKanan,
    required this.valueKanan,
    required this.imageKanan,
    required this.titleKiri,
    required this.valueKiri,
    required this.imageKiri,
    required this.isUmumKanan,
    required this.pathKanan,
    required this.isUmumKiri,
    required this.pathKiri,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CardKiri2(
                image: imageKiri,
                title: titleKiri,
                value: valueKiri,
                color: color,
                isUmum: isUmumKiri,
                path: pathKiri,
              ),
            ),
            Expanded(
              child: CardKanan2(
                image: imageKanan,
                title: titleKanan,
                value: valueKanan,
                color: color,
                isUmum: isUmumKanan,
                path: pathKanan,
              ),
            ),
          ],
        )
      ],
    );
  }
}
