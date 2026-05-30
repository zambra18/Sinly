import 'package:flutter/material.dart';
import 'dart:ui';

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
    return Scaffold(
      backgroundColor: const Color(0xFF5B3CC4),
      appBar: AppBar(
        title: Image.asset('assets/images/SinlyLogo.png', height: 40),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed: () => Navigator.pushNamed(context, '/info'),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white.withOpacity(0.2)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Saldo Actual', style: TextStyle(color: Colors.white70, fontSize: 18)),
                    const SizedBox(height: 10),
                    Text('\$${currentBalance.toStringAsFixed(2)}', 
                      style: const TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold)
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _glassButton(icon: Icons.remove, color: Colors.redAccent, onPressed: () => _subtract(10.0)),
                        _glassButton(icon: Icons.refresh, color: Colors.blueAccent, onPressed: _reset),
                        _glassButton(icon: Icons.add, color: Colors.greenAccent, onPressed: () => _add(10.0)),
                      ],
                    )
                  ],
                ),
              ),
            ),
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
