import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/component_widgets/compomenet.dart';
import '../controllers/jenis_pasien_controller.dart';

class JenisPasienView extends GetView<JenisPasienController> {
  const JenisPasienView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecf8ff),
      appBar: AppBar(
        elevation: 1,
        title: const Text('JenisPasien'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
    child : Column(
      children: [
    Homepage(),
      ],
    ),
      ),
    );
  }
}
