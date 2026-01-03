import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Wallet App Home',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Column(
        children: [
          // Wallet selector
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              width: 155,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage('images/America.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'USD wallet',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 6),
                  Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Balance label
          Text(
            'Available Balance',
            style: TextStyle(color: Colors.grey[500], fontSize: 14),
          ),

          const SizedBox(height: 10),

          // Balance amount
          const Text(
            '\$5,750.20',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          // Action buttons row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              actionCard(
                icon: Transform.rotate(
                  angle: 3.14 / 4,
                  child: const Icon(Icons.arrow_upward),
                ),
                label: 'Send',
              ),

              const SizedBox(width: 20),

              actionCard(
                icon: Transform.rotate(
                  angle: 3.14 / 4,
                  child: const Icon(Icons.arrow_downward),
                ),
                label: 'Withdraw',
              ),

              const SizedBox(width: 20),

              actionCard(
                icon: const Icon(Icons.add),
                label: 'Fund',
              ),
            ],
          ),

          const SizedBox(height: 40),

          // Large container
          Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white70, Colors.blue],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'MY ASSETS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 150, top: 20),
                  height: 20,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Icon(
                    Icons.add
                  ),
                  )
                )
              ],
            ),
            
          ),
          const SizedBox(height: 30),
          Column(
            children: [
            ],
            )
        ],
      ),
    );  
  }
}

/// Reusable action card widget
Widget actionCard({
  required Widget icon,
  required String label,
}) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: Colors.white),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconTheme(
          data: const IconThemeData(color: Colors.white, size: 30),
          child: icon,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
