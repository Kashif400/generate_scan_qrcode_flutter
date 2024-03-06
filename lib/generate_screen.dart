import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateScreen extends StatefulWidget {
  const GenerateScreen({super.key});

  @override
  State<GenerateScreen> createState() => _GenerateScreenState();
}

class _GenerateScreenState extends State<GenerateScreen> {
  TextEditingController value = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          value.text.isEmpty
              ? Container()
              : QrImageView(
                  data: value.text,
                  size: 200,
                  version: QrVersions.auto,
                ),
          TextField(
            controller: value,
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {});
            },
            child: const Text('Generate'),
          )
        ],
      ),
    );
  }
}
