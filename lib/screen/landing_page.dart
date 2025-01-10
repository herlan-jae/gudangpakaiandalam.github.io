import 'package:flutter/material.dart';

class LandingPageWeb extends StatelessWidget {
  final GlobalKey globalKey;
  const LandingPageWeb({
    super.key,
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      key: globalKey,
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/hero.png',
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          Opacity(
            opacity: 0.7,
            child: Container(
              color: Colors.deepOrangeAccent,
            ),
          ),
          const Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gudang Pakaian Dalam',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.0),
                Text(
                  'One Stop Solution for your Underwear',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
