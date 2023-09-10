import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
// import 'package:flutter_application_1/constants.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  height: 500,
                  margin: EdgeInsets.only(
                    top: size.height * 0.3,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
