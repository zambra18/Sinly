import 'package:flutter/material.dart';
import 'dart:ui';
import '../services/auth_store.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double currentBalance = 0.0;

  void _add(double amount) {
    setState(() {
      currentBalance += amount;
    });
  }

  void _subtract(double amount) {
    setState(() {
      currentBalance -= amount;
    });
  }

  void _reset() {
    setState(() {
      currentBalance = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userName = AuthStore.loggedInName ?? 'Usuario';

    return Scaffold(
      backgroundColor: const Color(0xFF5B3CC4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed: () => Navigator.pushNamed(context, '/info'),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset('assets/images/SinlyLogo.png', height: 80),
                  const SizedBox(height: 40),
                  Text(
                    'Hola,',
                    style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 24),
                  ),
                  Text(
                    userName,
                    style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'Tu saldo disponible es:',
                    style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '\$${currentBalance.toStringAsFixed(2)}',
                    style: const TextStyle(color: Colors.white, fontSize: 56, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _glassButton(icon: Icons.remove, color: Colors.redAccent, onPressed: () => _subtract(10.0)),
                    _glassButton(icon: Icons.refresh, color: Colors.blueAccent, onPressed: _reset),
                    _glassButton(icon: Icons.add, color: Colors.greenAccent, onPressed: () => _add(10.0)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _glassButton({required IconData icon, required Color color, required VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: color.withOpacity(0.5)),
        ),
        child: Icon(icon, color: color, size: 30),
      ),
    );
  }
}
