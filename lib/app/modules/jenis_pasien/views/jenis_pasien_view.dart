import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/jenis_pasien_controller.dart';

class JenisPasienView extends GetView<JenisPasienController> {
  const JenisPasienView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JenisPasienView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'JenisPasienView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
