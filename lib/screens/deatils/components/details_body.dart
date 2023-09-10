import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/screens/deatils/components/product_title_with_image.dart';
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
                ColorDot(size: size),
                ProductTitleImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      margin: EdgeInsets.only(
        top: size.height * 0.3,
      ),
      padding: EdgeInsets.only(
        top: size.height * 0.12,
        left: kDefaulfPadding,
        right: kDefaulfPadding,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            25,
          ),
          topRight: Radius.circular(
            25,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  const Text(
                    'Color',
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: kDefaulfPadding / 4,
                      right: kDefaulfPadding / 2,
                    ),
                    padding: const EdgeInsets.all(
                      2.5,
                    ),
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(
                          0xFF356C95,
                        ),
                      ),
                    ),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(
                          0xFF356C95,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
