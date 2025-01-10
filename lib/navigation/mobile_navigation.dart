import 'package:flutter/material.dart';
import 'package:web_gpd/screen/contact_page.dart';
import 'package:web_gpd/screen/info_page.dart';
import 'package:web_gpd/screen/landing_page.dart';
import 'package:web_gpd/screen/location_page.dart';
import 'package:web_gpd/screen/product_page.dart';

class MobilePageNavigation extends StatefulWidget {
  const MobilePageNavigation({super.key});

  @override
  State<MobilePageNavigation> createState() => _MobilePageNavigationState();
}

class _MobilePageNavigationState extends State<MobilePageNavigation> {
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
        centerTitle: true,
        title: const Text(
          "Gudang Pakaian Dalam",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFFE1D9D1)),
              child: Image.asset("assets/cv.png"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  onTap: () {
                    scrollToSection(section1Key);
                  },
                  title: const Text(
                    "Beranda",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {
                    scrollToSection(section2Key);
                  },
                  title: const Text(
                    "Produk",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {
                    scrollToSection(section3Key);
                  },
                  title: const Text(
                    "Informasi",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
                const Divider(),
                const SizedBox(width: 12.0),
                ListTile(
                  onTap: () {
                    scrollToSection(section4Key);
                  },
                  title: const Text(
                    "Alamat",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {
                    scrollToSection(section5Key);
                  },
                  title: const Text(
                    "Kontak",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
                const Divider(),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            LandingPageWeb(globalKey: section1Key),
            ProductPageMobile(globalKey: section2Key),
            InfoPageMobile(globalKey: section3Key),
            LocationPageMobile(globalKey: section4Key),
            ContactPageMobile(globalKey: section5Key),
          ],
        ),
      ),
    );
  }
}
