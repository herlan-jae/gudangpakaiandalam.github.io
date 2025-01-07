import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPageWeb extends StatelessWidget {
  final GlobalKey globalKey;
  const ContactPageWeb({
    super.key,
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: globalKey,
      color: Colors.deepOrangeAccent,
      height: size.height * 0.3,
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.3,
          vertical: size.height * 0.02,
        ),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Kunjungi Toko Kami',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final Uri url = Uri.parse(
                              "https://www.tokopedia.com/gudangunderwear");
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url,
                                mode: LaunchMode.externalApplication);
                          } else {
                            throw "Tidak dapat membuka $url";
                          }
                        },
                        child: const Text(
                          'Tokopedia',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final Uri url = Uri.parse(
                              "https://shopee.co.id/gudangunderwear4");
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw "Tidak dapat membuka $url";
                          }
                        },
                        child: const Text(
                          'Shopee',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final Uri url = Uri.parse(
                              "https://www.tiktok.com/@gudangpakaiandalam");
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw "Tidak dapat membuka $url";
                          }
                        },
                        child: const Text(
                          'TikTok Shop',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alamat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        'Tianseng Komp. Rukan Pangeran Jayakarta Center\nBlok E2 No.12 (pagar oranye)\nJl. Pangeran Jayakarta RT. 003, RW. 006\nSawah Besar\nJakarta Pusat\nJakarta\n10730',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Text(
                'Gudang Pakaian Dalam',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
