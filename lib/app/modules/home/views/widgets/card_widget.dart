import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_kanan.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_kiri.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String titleKanan;
  final String valueKanan;
  final String imageKanan;
  final String pathKanan;
  final bool isUmumKanan;
  final String titleKiri;
  final String valueKiri;
  final String imageKiri;
  final String pathKiri;
  final bool isUmumKiri;
  final int? color;
  CardWidget({
    super.key,
    required this.titleKanan,
    required this.valueKanan,
    required this.imageKanan,
    required this.isUmumKanan,
    required this.pathKanan,
    required this.titleKiri,
    required this.valueKiri,
    required this.imageKiri,
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
              child: CardKiri(
                image: imageKiri,
                title: titleKiri,
                value: valueKiri,
                color: color,
                isUmum: isUmumKiri,
                path: pathKiri,
              ),
            ),
            Expanded(
              child: CardKanan(
                isUmum: isUmumKanan,
                path: pathKanan,
                image: imageKanan,
                title: titleKanan,
                value: valueKanan,
                color: color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
