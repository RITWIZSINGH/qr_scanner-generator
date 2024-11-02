import 'package:flutter/material.dart';
import 'package:qr_scanner_generator/generate_qr_code.dart';
import 'package:qr_scanner_generator/scan_qr_code.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr Code Scanner and Generator'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 5,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScanQrCode()),
                  );
                });
              },
              child: Text('Scan QR Code'),
            ),
            SizedBox(
              height: screenHeight / 5,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GenerateQrCode()),
                  );
                });
              },
              child: Text('Generate QR Code'),
            ),
          ],
        ),
      ),
    );
  }
}
