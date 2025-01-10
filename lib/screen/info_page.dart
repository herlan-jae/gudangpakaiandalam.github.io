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
                fontSize: 45.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: size.height * 0.1),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InfoCardWeb(
                  size: size,
                  image: "assets/quality.png",
                  title: "Kualitas Terjamin",
                  description:
                      "Menyediakan berbagai merek pakaian dalam berkualitas tinggi yang terbuat dari bahan pilihan seperti katun, modal, dan microfiber, memastikan kenyamanan dan daya tahan.",
                ),
                const SizedBox(width: 24.0),
                InfoCardWeb(
                  size: size,
                  image: "assets/variation.png",
                  title: "Beragam Pilihan Produk",
                  description:
                      "Menawarkan koleksi lengkap untuk pria, wanita, dan anak-anak, termasuk bra, celana dalam, boxer, singlet, lingerie, saputangan, dan kaos kaki, yang memenuhi kebutuhan berbagai gaya dan preferensi.",
                ),
                const SizedBox(width: 24.0),
                InfoCardWeb(
                  size: size,
                  image: "assets/original.png",
                  title: "Multi-Brand Terdaftar",
                  description:
                      "Setiap produk dari berbagai macam merek yang dijual di Gudang Pakaian Dalam dijamin keasliannya, memastikan pelanggan mendapatkan produk asli dari merek resmi, bebas dari barang palsu atau tiruan.",
                ),
                const SizedBox(width: 24.0),
                InfoCardWeb(
                  size: size,
                  image: "assets/service.png",
                  title: "Pelayanan Terbaik",
                  description:
                      "Menjamin proses pemesanan yang mudah, pengiriman tepat waktu, dan layanan pelanggan yang responsif, memastikan pengalaman berbelanja yang memuaskan dan terpercaya.",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCardWeb extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const InfoCardWeb({
    super.key,
    required this.size,
    required this.image,
    required this.title,
    required this.description,
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
                image,
                height: size.height * 0.2,
              ),
              const SizedBox(height: 24.0),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
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

class InfoPageMobile extends StatelessWidget {
  final GlobalKey globalKey;
  const InfoPageMobile({
    super.key,
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: globalKey,
      color: Colors.deepOrangeAccent,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Kenapa Gudang Pakaian Dalam',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: size.height * 0.01),
            SingleChildScrollView(
              child: Column(
                children: [
                  InfoCardMobile(
                    size: size,
                    image: "assets/quality.png",
                    title: "Kualitas Terjamin",
                    description:
                        "Menyediakan berbagai merek pakaian dalam berkualitas tinggi yang terbuat dari bahan pilihan seperti katun, modal, dan microfiber, memastikan kenyamanan dan daya tahan.",
                  ),
                  InfoCardMobile(
                    size: size,
                    image: "assets/variation.png",
                    title: "Beragam Pilihan Produk",
                    description:
                        "Menawarkan koleksi lengkap untuk pria, wanita, dan anak-anak, termasuk bra, celana dalam, boxer, singlet, lingerie, saputangan, dan kaos kaki, yang memenuhi kebutuhan berbagai gaya dan preferensi.",
                  ),
                  InfoCardMobile(
                    size: size,
                    image: "assets/original.png",
                    title: "Multi-Brand Terdaftar",
                    description:
                        "Setiap produk dari berbagai macam merek yang dijual di Gudang Pakaian Dalam dijamin keasliannya, memastikan pelanggan mendapatkan produk asli dari merek resmi, bebas dari barang palsu atau tiruan.",
                  ),
                  InfoCardMobile(
                    size: size,
                    image: "assets/service.png",
                    title: "Pelayanan Terbaik",
                    description:
                        "Menjamin proses pemesanan yang mudah, pengiriman tepat waktu, dan layanan pelanggan yang responsif, memastikan pengalaman berbelanja yang memuaskan dan terpercaya.",
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }
}

class InfoCardMobile extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const InfoCardMobile({
    super.key,
    required this.size,
    required this.image,
    required this.title,
    required this.description,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: SizedBox(
        height: size.height * 0.3,
        child: Card(
          elevation: 2.0,
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.network(
                    image,
                    height: size.height * 0.1,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.deepOrange,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
