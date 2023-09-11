import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

int numOfItems = 1;

class _CartCounterState extends State<CartCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        outlinedButton(
          icon: Icons.remove,
          press: () {
            setState(
              () {
                if (numOfItems > 1) {
                  numOfItems--;
                }
              },
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaulfPadding / 2,
          ),
          child: Text(
            numOfItems.toString().padLeft(
                  2,
                  '0',
                ),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        outlinedButton(
          icon: Icons.add,
          press: () {
            setState(
              () {
                numOfItems++;
              },
            );
          },
        ),
      ],
    );
  }

  SizedBox outlinedButton({
    IconData? icon,
    VoidCallback? press,
  }) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              13,
            ),
          ),
        ),
        onPressed: press,
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
