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
      body: SingleChildScrollView(
        child: Column(
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

            // Action buttons
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

            // Assets Card
            Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.white70, Colors.blue],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LEFT CONTENT
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'MY ASSETS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_bitcoin,
                              color: Colors.yellow,
                              size: 32,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Bitcoin',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          '\$26,430.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    // Buttons
                    _miniButton(Icons.add),
                    const SizedBox(width: 8),
                    _miniButton(Icons.remove),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
            // Recent Transactions label
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Recent Transactions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Placeholder for recent transactions
         Column(
              children: List.generate(3, (index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    child: const Icon(Icons.monetization_on, color: Colors.white),
                  ),
                  title: Text(
                    'Transaction ${index + 1}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Details of transaction ${index + 1}',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  trailing: Text(
                    '-\$${(index + 1) * 50}.00',
                    style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                );
              }),
            ),
          ],
          
        ),
        
        
      ),
    );
  }
}

/// Mini + / - button
Widget _miniButton(IconData icon) {
  return Container(
    height: 26,
    width: 34,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
    ),
    alignment: Alignment.center,
    child: Icon(
      icon,
      size: 16,
      color: Colors.black,
    ),
  );
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
