import 'package:flutter/material.dart';

class QrView extends StatelessWidget {
  const QrView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SCan QR')),
      body: const Center(
        child: Text('Scan Qr'),
      ),
    );
  }
}
