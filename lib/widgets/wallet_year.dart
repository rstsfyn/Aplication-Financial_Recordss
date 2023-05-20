import 'package:aplikasikuu/screens/wallet_screen.dart';
import 'package:aplikasikuu/widgets/wallet_month.dart';
import 'package:aplikasikuu/widgets/widgets_profile.dart';
import 'package:flutter/material.dart';

class WalletYears extends StatefulWidget {
  const WalletYears({super.key});

  @override
  State<WalletYears> createState() => _WalletYearsState();
}

class _WalletYearsState extends State<WalletYears> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 37, 39),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Wallet',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true, // Center the title horizontally
        actions: [
          IconButton(
            padding: const EdgeInsets.only(
              right: 25,
            ),
            icon: const CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/profile/profilepp.jpg'),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WidgetProfile()));
            },
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding:
            const EdgeInsets.only(right: 25, left: 25, top: 25, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyWallet()));
                  },
                  child: const Text(
                    'Week',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WalletMonth()));
                  },
                  child: const Text(
                    'Month',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WalletMonth()));
                    },
                    child: const Center(
                      child: Text(
                        'Year',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              child: Image.asset(
                'assets/images/wallet/month.jpg',
                width: 500,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    Container(
                      height: 70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                      child: const ListTile(
                        title: Text('Expenses',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        trailing: Text('-Rp.11.300.000,00',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                      child: const ListTile(
                        title: Text('Income',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        trailing: Text('+Rp.15.000.000,00',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
