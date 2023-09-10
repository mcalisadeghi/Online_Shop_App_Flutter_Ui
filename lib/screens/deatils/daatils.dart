import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/bck.svg',
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
