import 'package:qr_code_scanner/qr_code_scanner.dart';

late QRViewController controller;

void _onQRViewCreated(QRViewController controller) {
  controller = controller;
  controller.scannedDataStream.listen((scanData) {
    // Handle scanned QR code data
    print('Scanned data: ${scanData.code}');
    // You can perform actions based on the scanned data here
    // For example, navigate to a new screen with the result
  });
}