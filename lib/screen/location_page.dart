import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Card(
                        color: Colors.white,
                        margin: const EdgeInsets.all(12.0),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/ruko.jpg',
                            height: size.height * 0.6,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.1),
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.pin_drop_rounded,
                            size: 60,
                            color: Colors.deepOrange,
                          ),
                          SizedBox(height: size.height * 0.02),
                          const Text(
                            'Tianseng Komplek Rukan Pangeran Jayakarta Center Blok E2 No.12 (pagar oranye) Jl. Pangeran Jayakarta RT. 003, RW. 006, Kecamatan Sawah Besar, Kota Administrasi Jakarta Pusat, DK Jakarta, 10730',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          ElevatedButton(
                            onPressed: () async {
                              final Uri uri = Uri.parse(
                                  "https://www.google.com/maps?q=Gudang+Pakaian+Dalam,+Tiangseng+Komplek+Rukan+Pangeran+Jayakarta+Center+Blok+E2.+12,+Jl.+Pangeran+Jayakarta+No.73,+RT.3/RW.6,+Mangga+Dua+Sel.,+Kecamatan+Sawah+Besar,+Kota+Jakarta+Pusat,+Daerah+Khusus+Ibukota+Jakarta+10730&ftid=0x2e69f550e5f7cb1b:0x988d09f13c1b2165&entry=gps&lucs=,94242514,94224825,94227247,94227248,47071704,94206166,47069508,94218641,94203019,47084304,94208458,94208447&g_ep=CAISDTYuMTI2LjMuNzY1MDAYACCenQoqbCw5NDI0MjUxNCw5NDIyNDgyNSw5NDIyNzI0Nyw5NDIyNzI0OCw0NzA3MTcwNCw5NDIwNjE2Niw0NzA2OTUwOCw5NDIxODY0MSw5NDIwMzAxOSw0NzA4NDMwNCw5NDIwODQ1OCw5NDIwODQ0N0ICSUQ%3D&g_st=com.google.maps.preview.copy");
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri,
                                    mode: LaunchMode.externalApplication);
                              } else {
                                throw "Tidak dapat membuka url";
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrangeAccent,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('Kunjungi Alamat'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LocationPageMobile extends StatelessWidget {
  final GlobalKey globalKey;
  const LocationPageMobile({
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
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Alamat',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Flexible(
              flex: 2,
              child: Card(
                color: Colors.white,
                margin: const EdgeInsets.all(12.0),
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/ruko.jpg',
                    height: size.height * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            const Icon(
              Icons.pin_drop_rounded,
              size: 48,
              color: Colors.deepOrange,
            ),
            SizedBox(height: size.height * 0.01),
            const Text(
              'Tianseng Komplek Rukan Pangeran Jayakarta Center\nBlok E2 No.12 (pagar oranye)\nJl. Pangeran Jayakarta RT. 003, RW. 006,\nKecamatan Sawah Besar,\nKota Administrasi Jakarta Pusat\n10730',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            ElevatedButton(
              onPressed: () async {
                final Uri uri = Uri.parse(
                    "https://www.google.com/maps?q=Gudang+Pakaian+Dalam,+Tiangseng+Komplek+Rukan+Pangeran+Jayakarta+Center+Blok+E2.+12,+Jl.+Pangeran+Jayakarta+No.73,+RT.3/RW.6,+Mangga+Dua+Sel.,+Kecamatan+Sawah+Besar,+Kota+Jakarta+Pusat,+Daerah+Khusus+Ibukota+Jakarta+10730&ftid=0x2e69f550e5f7cb1b:0x988d09f13c1b2165&entry=gps&lucs=,94242514,94224825,94227247,94227248,47071704,94206166,47069508,94218641,94203019,47084304,94208458,94208447&g_ep=CAISDTYuMTI2LjMuNzY1MDAYACCenQoqbCw5NDI0MjUxNCw5NDIyNDgyNSw5NDIyNzI0Nyw5NDIyNzI0OCw0NzA3MTcwNCw5NDIwNjE2Niw0NzA2OTUwOCw5NDIxODY0MSw5NDIwMzAxOSw0NzA4NDMwNCw5NDIwODQ1OCw5NDIwODQ0N0ICSUQ%3D&g_st=com.google.maps.preview.copy");
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                } else {
                  throw "Tidak dapat membuka url";
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
                foregroundColor: Colors.white,
              ),
              child: const Text('Kunjungi Alamat'),
            )
          ],
        ),
      ),
    );
  }
}
