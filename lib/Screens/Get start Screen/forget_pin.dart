import 'package:flutter/material.dart';
import 'package:nagaad/Screens/Get%20start%20Screen/get_start.dart';
import 'package:url_launcher/url_launcher.dart';


class ForgetPINScreen extends StatefulWidget {
  const ForgetPINScreen({super.key});

  @override
  State<ForgetPINScreen> createState() => _ForgetPINScreenState();
}

class _ForgetPINScreenState extends State<ForgetPINScreen> {
  List<TextEditingController> controllers = List.generate(6, (index) => TextEditingController());
  bool isOTPReady() {
    return controllers.every((controller) => controller.text.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back, size: 25, color: Colors.white,)),
              SizedBox(width: 100,),
              const Text(
                'Verify OTP',
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
      body:  Padding(
        padding:  EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            const Text(
              'Please call to get OTP',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.grey.shade200
                ),
                child: Center(child: Icon(Icons.wifi_calling_3_rounded,
                  size: 60, color: Colors.deepOrange,))),
            SizedBox(height: 20,),
            const Text(
              'After a succesfull request to call center, an OTP will be send to'
                  'below Number. Please wait',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10,),
            const Text(
              '+8801733-682541',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.deepOrange,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20,),
            Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              6,
                  (index) => Container(
                width: 30,
                margin: EdgeInsets.all(7),
                child: TextFormField(
                  controller: controllers[index],
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),

                  decoration: const InputDecoration(
                    counterText: '',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onChanged: (String value) {
                    if (value.length == 1 && index < 5) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                ),
              ),
            ),
          ),
        ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetStartScreen()),
                );
              },
              child: SizedBox(
                width: 200,
                height: 50,
                child: FloatingActionButton(
                  onPressed: isOTPReady() ? () => print('Verify pressed') : null,
                  child: Text(
                    'Verify',
                    style: TextStyle(color: Colors.grey),
                  ),
                  backgroundColor: isOTPReady() ? Colors.deepOrange : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.deepOrange, width: 2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            const Text(
              'PIN reset from USSD',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20),

            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '1. Dial *167#',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '2. Provide your NID/ photo ID NUmber',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '3. Inter Your Last Transaction Number',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '4. Set New 4 digit Pin after getting confirmartion\n SMS',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'For more details ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    launch('https://www.bkash.com/');
                  },
                  child: const Text(
                    '  Click Here',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.deepOrange,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),

    );
  }
}
