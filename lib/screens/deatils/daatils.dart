import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
// import 'package:flutter_application_1/screens/components/categories.dart';
// import 'package:flutter_application_1/constants.dart';

class DetailsSCreen extends StatelessWidget {
  final Product product;
  const DetailsSCreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
      ),
    );
  }
}
