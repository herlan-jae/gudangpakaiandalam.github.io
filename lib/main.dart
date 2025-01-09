import 'package:flutter/material.dart';
import 'package:web_gpd/navigation/mobile_navigation.dart';
import 'package:web_gpd/navigation/web_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gudang Pakaian Dalam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double width = constraints.maxWidth;
          if (width < 600) {
            return const MobilePageNavigation();
          } else {
            return const WebPageNavigation();
          }
        },
      ),
    );
  }
}
