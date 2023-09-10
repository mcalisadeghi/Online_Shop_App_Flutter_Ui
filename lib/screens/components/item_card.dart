import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/screens/components/categories.dart';

class Cardbiulder extends StatelessWidget {
  final Product product;
  final Function press;
  const Cardbiulder({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(
              kDefaulfPadding,
            ),
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            child: Image.asset(
              product.image,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaulfPadding / 4,
          ),
          child: Text(
            product.title,
            style: const TextStyle(
              color: kTextColor,
            ),
          ),
        ),
        Text(
          "\$${product.price}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
