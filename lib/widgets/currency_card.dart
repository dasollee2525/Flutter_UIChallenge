import 'dart:ffi';

import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currency_name;
  final String amount;
  final String currency_unit;
  final IconData icon;
  final Color bgcolor;
  final Color textcolor;
  final double order;

  const CurrencyCard(
      {super.key,
      required this.currency_name,
      required this.amount,
      required this.currency_unit,
      required this.icon,
      required this.bgcolor,
      required this.textcolor,
      required this.order});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * (order - 1)),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(currency_name,
                          style: TextStyle(
                              color: textcolor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            amount,
                            style: TextStyle(
                              color: textcolor,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            currency_unit,
                            style: TextStyle(color: textcolor),
                          )
                        ],
                      )
                    ],
                  ),
                  Transform.scale(
                    scale: 5,
                    child: Transform.translate(
                      offset: const Offset(-5, 3),
                      child: Icon(
                        icon,
                        color: textcolor,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
