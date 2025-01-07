import 'package:flutter/material.dart';

class InfoPageWeb extends StatelessWidget {
  final GlobalKey globalKey;
  const InfoPageWeb({
    super.key,
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: globalKey,
      color: Colors.deepOrangeAccent,
      height: size.height,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 24.0),
            const Text(
              'Kenapa Gudang Pakaian Dalam?',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: size.height * 0.1),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InfoCard(size: size),
                const SizedBox(width: 24.0),
                InfoCard(size: size),
                const SizedBox(width: 24.0),
                InfoCard(size: size),
                const SizedBox(width: 24.0),
                InfoCard(size: size),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.5,
      width: size.width * 0.2,
      child: Card(
        elevation: 3.0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          child: Column(
            children: [
              Image.network(
                'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
                height: size.height * 0.2,
              ),
              const SizedBox(height: 24.0),
              const Text(
                'Lorem Ipsum',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec semper, eros eget vulputate venenatis, risus nulla commodo dolor, vel volutpat nisl tortor sit amet lectus. Donec turpis mi, viverra vel massa vitae, ornare ullamcorper eros.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
