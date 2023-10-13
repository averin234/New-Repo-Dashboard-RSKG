import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/component_widgets/compomenet.dart';
import '../controllers/jenis_pasien_controller.dart';

class JenisPasienView extends GetView<JenisPasienController> {
  const JenisPasienView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecf8ff),
      appBar: AppBar(
        elevation: 0,
        title: const Text('Instalasi'),
      ),
      body: const SingleChildScrollView(
    child : Column(
      children: [
    Homepage(),
      ],
    ),
      ),
    );
  }
}
