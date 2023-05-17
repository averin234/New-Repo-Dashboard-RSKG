import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_kanan.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_kiri.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String titleKanan;
  final String valueKanan;
  final String imageKanan;
  final String titleKiri;
  final String valueKiri;
  final String imageKiri;
  final int? color;
  const CardWidget({
    super.key,
    required this.titleKanan,
    required this.valueKanan,
    required this.imageKanan,
    required this.titleKiri,
    required this.valueKiri,
    required this.imageKiri,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardKiri(
          image: imageKiri,
          title: titleKiri,
          value: valueKiri,
          color: color,
        ),
        CardKanan(
          image: imageKanan,
          title: titleKanan,
          value: valueKanan,
          color: color,
        ),
      ],
    );
  }
}
