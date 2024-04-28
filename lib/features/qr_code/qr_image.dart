import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

/// This class shows actual rendering of the QR image

class QRImage extends StatelessWidget {
  const QRImage(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter + QR code'),
          centerTitle: true,
        ),
        body: Center(
          child: QrImageView(
            data: controller.text,
            size: 280,
            //You can use include embeddedImageStyle Property if you wanna embed an image from your Asset folder
            embeddedImageStyle: const QrEmbeddedImageStyle(
              size: Size(
                100,
                100,
              ),
            ),
          ),
        ));
  }
}
