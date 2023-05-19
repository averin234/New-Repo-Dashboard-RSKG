import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
      body: const Center(
        child: Text(
          'DetailUmumView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
