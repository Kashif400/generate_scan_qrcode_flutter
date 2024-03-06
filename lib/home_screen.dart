import 'package:flutter/material.dart';
import 'package:generate_scan_qrcod/generate_screen.dart';
import 'package:generate_scan_qrcod/scanner_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScannerScreen()));
            },
            child: const Center(child: Text('Scanner QR Code')),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GenerateScreen()));
            },
            child: const Text('Generate QR Code'),
          )
        ],
      ),
    );
  }
}
