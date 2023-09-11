import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/screens/deatils/components/add_to_cart.dart';
import 'package:flutter_application_1/screens/deatils/components/color_and_size.dart';
import 'package:flutter_application_1/screens/deatils/components/counter_with_fav_btn.dart';
import 'package:flutter_application_1/screens/deatils/components/description.dart';
import 'package:flutter_application_1/screens/deatils/components/product_title_with_image.dart';

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
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
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
                    children: <Widget>[
                      ColorAndSize(
                        product: product,
                      ),
                      Description(
                        product: product,
                      ),
                      const CounterWithFavBtn(),
                      AddToCart(product: product),
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
