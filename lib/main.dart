import 'package:flutter/material.dart';

import 'widgets/button.dart';
import 'widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "hey, selena",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            // 커스텀 컬러 사용법 = Color(0xFF + 컬러명6자리) ex Color(0xFFFFFFFF)#FFFFFF의 #대신에 0xFF를 사용하는것 같음(16진수 표기법) ,
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "\$5 194 482",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        text: "Transfer",
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black),
                    Button(
                        text: "Request",
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  // crossAxis - Row의 정방향이 가로이므로 세로 정렬 해서 글의 위치 잡아주고
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // MainAxis - 글자의 위치 지정
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // 카드 부분
                const CurrencyCard(
                    name: "Euro",
                    code: "EUR",
                    amount: "6 428",
                    icon: Icons.euro_rounded,
                    isInverted: false),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: const CurrencyCard(
                      name: "Bitcoin",
                      code: 'BTC',
                      amount: '9 428',
                      icon: Icons.currency_bitcoin,
                      isInverted: true),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const CurrencyCard(
                      name: "Dollar",
                      code: "USD",
                      amount: "428",
                      icon: Icons.money_off,
                      isInverted: false),
                ),
              ],
            ),
          )),
    );
  }
}
