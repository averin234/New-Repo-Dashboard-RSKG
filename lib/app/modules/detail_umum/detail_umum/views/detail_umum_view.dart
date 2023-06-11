import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/detail_umum_controller.dart';

class DetailUmumView extends GetView<DetailUmumController> {
  const DetailUmumView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailUmumView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailUmumView is working',
          style: GoogleFonts.nunito(fontSize: 20),
        ),
      ),
    );
  }
}
