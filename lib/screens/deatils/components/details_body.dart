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
                Container(
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
                        24,
                      ),
                      topRight: Radius.circular(
                        24,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                    ],
                  ),
                ),
                ProductTitleImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Color',
              ),
              Row(
                children: [
                  ColorDot(
                    color: Color(
                      0xFF356C95,
                    ),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(
                      0xFFF8C078,
                    ),
                  ),
                  ColorDot(
                    color: Color(
                      0xFFA29B9B,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: kTextColor,
              ),
              children: [
                TextSpan(
                  text: 'Size\n',
                ),
                TextSpan(
                  text: '${product.size}cm',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaulfPadding / 4,
        right: kDefaulfPadding / 2,
      ),
      padding: const EdgeInsets.all(
        2.5,
      ),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
