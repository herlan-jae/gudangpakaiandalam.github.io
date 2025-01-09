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
                  'Produk Kami',
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
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec semper, eros eget vulputate venenatis, risus nulla commodo dolor, vel volutpat nisl tortor sit amet lectus. Donec turpis mi, viverra vel massa vitae, ornare ullamcorper eros. Fusce volutpat mauris id nibh dictum pellentesque. Aenean dictum mauris id bibendum auctor. Ut ac enim eget sem malesuada elementum. In laoreet arcu in nunc porttitor, vel blandit elit gravida. Nullam tincidunt mauris nec urna placerat, sed accumsan sem pretium. Vestibulum posuere hendrerit quam, sit amet eleifend purus dignissim ac.',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              color: Colors.white,
                              margin: const EdgeInsets.all(12.0),
                              child: Image.network(
                                'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
                                height: size.height * 0.2,
                              ),
                            ),
                            Card(
                              color: Colors.white,
                              margin: const EdgeInsets.all(12.0),
                              child: Image.network(
                                'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
                                height: size.height * 0.2,
                              ),
                            ),
                            Card(
                              color: Colors.white,
                              margin: const EdgeInsets.all(12.0),
                              child: Image.network(
                                'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
                                height: size.height * 0.2,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              color: Colors.white,
                              margin: const EdgeInsets.all(12.0),
                              child: Image.network(
                                'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
                                height: size.height * 0.2,
                              ),
                            ),
                            Card(
                              color: Colors.white,
                              margin: const EdgeInsets.all(12.0),
                              child: Image.network(
                                'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
                                height: size.height * 0.2,
                              ),
                            ),
                            Card(
                              color: Colors.white,
                              margin: const EdgeInsets.all(12.0),
                              child: Image.network(
                                'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
                                height: size.height * 0.2,
                              ),
                            ),
                          ],
                        ),
                      ],
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
              'Produk Kami',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            ..._buildProductRows(size),
            SizedBox(height: size.height * 0.01),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec semper, eros eget vulputate venenatis, risus nulla commodo dolor, vel volutpat nisl tortor sit amet lectus. Donec turpis mi, viverra vel massa vitae, ornare ullamcorper eros. Fusce volutpat mauris id nibh dictum pellentesque. Aenean dictum mauris id bibendum auctor. Ut ac enim eget sem malesuada elementum. In laoreet arcu in nunc porttitor.',
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildProductRows(Size size) {
    List<String> productImages = [
      'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
      'https://png.pngtree.com/png-vector/20221104/ourmid/pngtree-cold-calling-isolated-concept-vector-illustration-png-image_6408676.png',
    ];

    return List.generate(3, (index) => _buildProductRow(productImages, size));
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
      margin: const EdgeInsets.all(12.0),
      child: Image.network(
        imageUrl,
        height: size.height * 0.15,
      ),
    );
  }
}
