import 'package:flutter/material.dart';
import 'package:toonflix/widgets/currency_card.dart';
import 'widgets/Button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Colors.white.withOpacity((0.8)),
                            fontSize: 18),
                      ),
                    ])
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      fontSize: 22, color: Colors.white.withOpacity(0.8)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 44,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black),
                    MyButton(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    ),
                    Text('View All', style: TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                    currency_name: 'EURO',
                    amount: '6 428',
                    currency_unit: "EUR",
                    icon: Icons.euro_rounded,
                    bgcolor: Colors.black,
                    textcolor: Colors.white,
                    order: 1),
                const CurrencyCard(
                      currency_name: "BitCoin",
                      amount: "9 785",
                      currency_unit: "BTC",
                      icon: Icons.currency_bitcoin_rounded,
                      bgcolor: Colors.white,
                      textcolor: Colors.black,
                      order: 2
                ),
                
                const CurrencyCard(
                      currency_name: 'Dollar',
                      amount: '1 123',
                      currency_unit: "USD",
                      icon: Icons.usb_rounded,
                      bgcolor: Colors.black,
                      textcolor: Colors.white,
                      order: 3
                      ),
              ],
            ),
          ),
        ),
      ),
    )
  }
}
