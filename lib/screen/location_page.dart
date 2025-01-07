import 'package:flutter/material.dart';

class LocationPageWeb extends StatelessWidget {
  final GlobalKey globalKey;
  const LocationPageWeb({
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24.0),
            const Text(
              'Alamat',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: size.height * 0.1),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.all(12.0),
                    child: Image.network(
                      'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
                      height: size.height * 0.6,
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.1),
                const Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.pin_drop_rounded,
                        size: 60,
                        color: Colors.deepOrange,
                      ),
                      SizedBox(height: 24.0),
                      Text(
                        'Tianseng Komplek Rukan Pangeran Jayakarta Center Blok E2 No.12 (pagar oranye) Jl. Pangeran Jayakarta RT. 003, RW. 006, Kecamatan Sawah Besar, Kota Administrasi Jakarta Pusat, DK Jakarta, 10730',
                        style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
