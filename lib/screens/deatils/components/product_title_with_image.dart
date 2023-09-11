import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/product.dart';

class ProductTitleImage extends StatelessWidget {
  const ProductTitleImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaulfPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'arstocratic had bag',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: kDefaulfPadding,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: <InlineSpan>[
                    const TextSpan(
                      text: 'Price\n',
                    ),
                    TextSpan(
                      text: '\$${product.price}',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaulfPadding,
              ),
              Expanded(
                child: Hero(
                  tag: '${product.id}',
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
