import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Model CardItem
class CardItem {
  final String text;
  final Color color;
  final IconData icon;
  final Color colorBackground;

  CardItem({
    required this.text,
    required this.color,
    required this.icon,
    required this.colorBackground
  });
}
class Controller extends GetxController with SingleGetTickerProviderMixin {
  RxInt selectedPage = 0.obs;
  late TabController tabController;
  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'Formulir Klaim'),
    Tab(text: 'Foto SIM & STNK'),
    Tab(text: 'Klaim Kerusakan\nKendaraan'),
  ];

  var cardList = <CardItem>[
    CardItem(
      text: 'Formulir Klaim',
      color: Colors.red,
      icon: Icons.menu_book_rounded,
      colorBackground: Colors.red.shade100,
    ),
    CardItem(
      text: 'Foto SIM & STNK',
      color: Colors.green,
      icon: Icons.card_membership_rounded,
      colorBackground: Colors.green.shade50,
    ),
    CardItem(
      text: 'Klaim Kerusakan\nKendaraan',
      color: Colors.blue,
      icon: Icons.car_crash_outlined,
      colorBackground: Colors.blue.shade50,
    ),
  ].obs;

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: cardList.length);
    super.onInit();
  }

  void setSelectedPage(int index) {
    selectedPage(index);
    tabController.animateTo(index);
  }
}