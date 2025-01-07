import 'package:flutter/material.dart';
import 'package:web_gpd/screen/contact_page.dart';
import 'package:web_gpd/screen/info_page.dart';
import 'package:web_gpd/screen/landing_page.dart';
import 'package:web_gpd/screen/location_page.dart';
import 'package:web_gpd/screen/product_page.dart';

class WebPageNavigation extends StatefulWidget {
  const WebPageNavigation({super.key});

  @override
  State<WebPageNavigation> createState() => _WebPageNavigationState();
}

class _WebPageNavigationState extends State<WebPageNavigation> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey section1Key = GlobalKey();
  final GlobalKey section2Key = GlobalKey();
  final GlobalKey section3Key = GlobalKey();
  final GlobalKey section4Key = GlobalKey();
  final GlobalKey section5Key = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.shopping_bag_rounded),
        title: const Text(
          "Gudang Pakaian Dalam",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              scrollToSection(section1Key);
            },
            child: const Text(
              "Beranda",
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
          const SizedBox(width: 12.0),
          TextButton(
            onPressed: () {
              scrollToSection(section2Key);
            },
            child: const Text(
              "Produk",
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
          const SizedBox(width: 12.0),
          TextButton(
            onPressed: () {
              scrollToSection(section3Key);
            },
            child: const Text(
              "Informasi",
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
          const SizedBox(width: 12.0),
          TextButton(
            onPressed: () {
              scrollToSection(section4Key);
            },
            child: const Text(
              "Alamat",
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
          const SizedBox(width: 12.0),
          TextButton(
            onPressed: () {
              scrollToSection(section5Key);
            },
            child: const Text(
              "Kontak",
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
          const SizedBox(width: 12.0),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            LandingPageWeb(globalKey: section1Key),
            ProductPageWeb(globalKey: section2Key),
            InfoPageWeb(globalKey: section3Key),
            LocationPageWeb(globalKey: section4Key),
            ContactPageWeb(globalKey: section5Key),
          ],
        ),
      ),
    );
  }
}
