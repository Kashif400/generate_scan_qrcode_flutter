import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  String scanValue = '';
  startScan() async {
    var result;
    try {
      result = await FlutterBarcodeScanner.scanBarcode(
          '#ffffff', 'Cancel', true, ScanMode.QR);
    } on PlatformException catch (e) {
      result = 'failed to get plateform version.';
      print('error occured ${e.code}');
    } catch (e) {
      print('error occured ${e.toString()}');
    }
    if (!mounted) return;

    setState(() {
      scanValue = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Scanned value - $scanValue',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                startScan();
              },
              child: Text('Start Scan'),
            ),
          )
        ],
      ),
    );
  }
}
