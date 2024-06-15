import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class MarchentPayScreen extends StatefulWidget {
  const MarchentPayScreen({super.key});

  @override
  State<MarchentPayScreen> createState() => _MarchentPayScreenState();
}

class _MarchentPayScreenState extends State<MarchentPayScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Center(
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back, size: 25, color: Colors.white,)),
              SizedBox(width: 70,),
              const Text(
                'Payment',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 120,
              width: double.infinity,
              color: Colors.white,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                      height: 100 ,
                      child: Icon(Icons.phone_outlined,size: 35, color: Colors.deepOrange,)),
                  const SizedBox(width: 8,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Recipient', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 15,
                      ),),
                      Container(
                        width: 328,
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            suffixIcon: Icon(Icons.arrow_circle_right,
                              size: 32,color: Colors.grey.shade400,),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('11 Digit Mobile Number', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 14,
                      ),),



                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child:Container(
                  height: 40,
                  padding: EdgeInsets.all(5),
                  width: 220,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.deepOrange, // Change border color here
                      width: 1.4, // Change border width here
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child:const Center(
                    child: Row(
                      children: [
                        Icon(Icons.qr_code_2, color: Colors.deepOrange,),
                        SizedBox(width: 5,),
                        Text(
                          'Tap to scan QR code',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.deepOrange,
                            fontSize: 16,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),




        ],
      ),

    );
  }
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      // Handle scanned QR code data
      print('Scanned data: ${scanData.code}');
      // You can perform actions based on the scanned data here
      // For example, navigate to a new screen with the result
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
