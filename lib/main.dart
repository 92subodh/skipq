import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WalletHomePage(),
    );
  }
}

class WalletHomePage extends StatelessWidget {
  final String userName = "Dani Martinez";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(LucideIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(LucideIcons.receipt), label: 'Bills'),
          BottomNavigationBarItem(icon: Icon(LucideIcons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(LucideIcons.user), label: 'Profile'),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello $userName", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("Welcome Back", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    child: Text(
                      userName[0],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [Colors.blueAccent, Colors.cyan],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.account_balance_wallet, color: Colors.white),
                            SizedBox(width: 8),
                            Text("35,000", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("+ Add Money"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Column(
                        children: const [
                          Icon(Icons.qr_code_scanner, size: 100, color: Colors.white),
                          SizedBox(height: 10),
                          Text("Tap to scan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.account_balance_wallet),
                    label: Text("Add Money to Wallet"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.credit_card),
                    label: Text("Check Wallet Balance"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Notice Board", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade200, blurRadius: 8, spreadRadius: 2),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset("assets/images/kurkure.webp", width: 50),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text("Hurry up! Grab the offer now", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
