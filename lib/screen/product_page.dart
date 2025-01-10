import 'package:flutter/material.dart';

class ProductPageWeb extends StatelessWidget {
  final GlobalKey globalKey;

  const ProductPageWeb({
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Flexible(
                child: Text(
                  'Tentang Kami',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Flexible(
                    flex: 2,
                    child: Text(
                      'Gudang Pakaian Dalam adalah distributor terpercaya yang menyediakan berbagai macam merek dan jenis pakaian dalam berkualitas tinggi. Dengan fokus pada kenyamanan dan kualitas, Gudang Pakaian Dalam menawarkan pilihan produk untuk semua kalangan, termasuk pakaian dalam pria, wanita, dan anak-anak. Komitmen Gudang Pakaian Dalam adalah memberikan pelayanan terbaik kepada pelanggan, termasuk layanan pemesanan yang mudah, pengiriman tepat waktu, serta harga yang kompetitif. Dengan beragam pilihan dan dedikasi pada kepuasan pelanggan, Gudang Pakaian Dalam menjadi pilihan utama bagi para pengecer dan konsumen yang mencari pakaian dalam berkualitas.',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      children: _buildImageRows(size),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildImageRows(Size size) {
    List<String> imageUrls = [
      'assets/underwear.png',
      'assets/bikini.png',
      'assets/vest.png',
      'assets/tshirt.png',
      'assets/socks.png',
      'assets/handkerchief.png',
    ];

    return List.generate(
      (imageUrls.length / 3).ceil(),
      (index) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageUrls
            .sublist(
              index * 3,
              (index * 3 + 3) > imageUrls.length
                  ? imageUrls.length
                  : index * 3 + 3,
            )
            .map((url) => _buildImageCard(url, size))
            .toList(),
      ),
    );
  }

  Widget _buildImageCard(String imageUrl, Size size) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      margin: const EdgeInsets.all(12.0),
      child: Image.network(
        imageUrl,
        height: size.height * 0.2,
      ),
    );
  }
}

class ProductPageMobile extends StatelessWidget {
  final GlobalKey globalKey;

  const ProductPageMobile({
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
              'Tentang Kami',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            ..._buildProductRows(size),
            SizedBox(height: size.height * 0.03),
            const Text(
              'Gudang Pakaian Dalam adalah distributor terpercaya yang menyediakan berbagai macam merek dan jenis pakaian dalam berkualitas tinggi. Dengan fokus pada kenyamanan dan kualitas, Gudang Pakaian Dalam menawarkan pilihan produk untuk semua kalangan, termasuk pakaian dalam pria, wanita, dan anak-anak. Komitmen Gudang Pakaian Dalam adalah memberikan pelayanan terbaik kepada pelanggan, termasuk layanan pemesanan yang mudah, pengiriman tepat waktu, serta harga yang kompetitif. Dengan beragam pilihan dan dedikasi pada kepuasan pelanggan, Gudang Pakaian Dalam menjadi pilihan utama bagi para pengecer dan konsumen yang mencari pakaian dalam berkualitas.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildProductRows(Size size) {
    List<String> productImages = [
      'assets/underwear.png',
      'assets/bikini.png',
      'assets/vest.png',
      'assets/tshirt.png',
      'assets/socks.png',
      'assets/handkerchief.png',
    ];

    return List.generate(
      (productImages.length / 3).ceil(),
      (index) => _buildProductRow(
        productImages.sublist(
          index * 3,
          (index * 3 + 3) > productImages.length
              ? productImages.length
              : index * 3 + 3,
        ),
        size,
      ),
    );
  }

  Widget _buildProductRow(List<String> images, Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: images.map((image) => _buildProductCard(image, size)).toList(),
    );
  }

  Widget _buildProductCard(String imageUrl, Size size) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      margin: const EdgeInsets.all(12.0),
      child: Image.network(
        imageUrl,
        height: size.height * 0.13,
      ),
    );
  }
}
