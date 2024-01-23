import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peminjaman View'),
        centerTitle: true,
      ),
      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text("${state[index].book?.judul}"),
            subtitle: Text(
                "Status: ${state[index].status}, "
                "Peminjam: ${state[index].userId}"
            ),
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
      ))
    );
  }
}
