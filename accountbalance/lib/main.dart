import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AccountBalance(),
      ),
    );
  }
}

class AccountBalance extends StatefulWidget {
  @override
  _AccountBalanceState createState() => _AccountBalanceState();
}

class _AccountBalanceState extends State<AccountBalance> {
  double balance = 25000.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 14, 0, 72),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Text(
              'Account Balance',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$${balance.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            balance -= 50.0;
                          });
                        },
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 168, 66, 2),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_downward,
                              color: Color.fromARGB(255, 243, 244, 245),
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            balance += 100.0;
                          });
                        },
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 140, 183, 248),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_upward,
                              color: Color.fromARGB(255, 253, 253, 254),
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
