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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildVisitStoreWidget(),
                BuilSocialMediaWidget(),
                BuildAddressWidget(),
              ],
            ),
            Text(
              'Gudang Pakaian Dalam',
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildVisitStoreWidget extends StatelessWidget {
  const BuildVisitStoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kunjungi Toko Kami',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
        ),
        SizedBox(height: 8.0),
        BuildLink(
            text: 'Tokopedia',
            url: 'https://www.tokopedia.com/gudangunderwear'),
        BuildLink(text: 'Shopee', url: 'https://shopee.co.id/gudangunderwear4'),
        BuildLink(
            text: 'TikTok Shop',
            url: 'https://www.tiktok.com/@gudangpakaiandalam'),
      ],
    );
  }
}

class BuildAddressWidget extends StatelessWidget {
  const BuildAddressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Alamat',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
        ),
        SizedBox(height: 8.0),
        Text(
          'Tianseng Komp. Rukan Pangeran Jayakarta Center',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
        Text(
          'Blok E2 No.12 (pagar oranye)',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
        Text(
          'Jl. Pangeran Jayakarta RT. 003, RW. 006',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
        Text(
          'Sawah Besar, Jakarta Pusat, 10730',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
      ],
    );
  }
}

class BuilSocialMediaWidget extends StatelessWidget {
  const BuilSocialMediaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Media Sosial',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
        ),
        SizedBox(height: 8.0),
        BuildLink(
            text: 'Facebook',
            url:
                'https://www.facebook.com/dodi.rostandi.5?mibextid=LQQJ4d&rdid=InsfPAWejPDktIwy&share_url=https%3A%2F%2Fwww.facebook.com%2Fshare%2F8LRCJp3NNF3d39uE%2F%3Fmibextid%3DLQQJ4d#'),
        BuildLink(
            text: 'Instagram',
            url: 'https://www.instagram.com/gudangpakaiandalam.katalog/'),
        BuildLink(
            text: 'TikTok', url: 'https://www.tiktok.com/@gudangpakaiandalam'),
        BuildLink(
            text: "WhatsApp",
            url:
                "https://api.whatsapp.com/send/?phone=081210132385&text&type=phone_number&app_absent=0")
      ],
    );
  }
}

class BuildLink extends StatelessWidget {
  final String text;
  final String url;

  const BuildLink({
    super.key,
    required this.text,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          throw "Tidak dapat membuka $url";
        }
      },
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 14.0, color: Colors.white),
          ),
          const SizedBox(width: 4.0),
          const Icon(
            Icons.link_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class ContactPageMobile extends StatelessWidget {
  final GlobalKey globalKey;
  const ContactPageMobile({
    super.key,
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: globalKey,
      color: Colors.deepOrangeAccent,
      height: size.height * 0.7,
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.3,
          vertical: size.height * 0.02,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BuildVisitStoreWidget(),
            BuilSocialMediaWidget(),
            BuildAddressWidget(),
            Text(
              'Gudang Pakaian Dalam',
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
