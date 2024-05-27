import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AfterCreditPage extends StatelessWidget {
  const AfterCreditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "After credit",
          textAlign: TextAlign.left,
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: <Widget>[
            Text(
              'We would like to thank the following people for their contributions to this app:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 15),
            Text(
                'TG-Unagi\nTG-Fugusashi\nTG-Roe\nTG-Sakana\nTG-Yakitori\nTG-Tako',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text(
              'If you would like to support the development of this app, please consider donating by scanning the QR code below:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 15),
            QrImageView(
              data: 'This QR code has an embedded image as well',
              version: QrVersions.auto,
              size: 200,
              gapless: false,
              embeddedImage: AssetImage('assets/images/donate.png'),
              embeddedImageStyle: QrEmbeddedImageStyle(
                size: Size(80, 80),
              ),
            )
          ],
        ),
      ),
    );
  }
}
