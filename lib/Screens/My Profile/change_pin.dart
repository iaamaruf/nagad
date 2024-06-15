import 'package:flutter/material.dart';

class ChangPinScreen extends StatefulWidget {
  const ChangPinScreen({super.key});

  @override
  State<ChangPinScreen> createState() => _ChangPinScreenState();
}

class _ChangPinScreenState extends State<ChangPinScreen> {
  TextEditingController _pinController = TextEditingController();
  TextEditingController _NEWpinController = TextEditingController();
  TextEditingController _RNEWpinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 50,
              ),
              const Text(
                'Change PIN ',
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
        elevation: 2,
      ),
      body:   Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: _pinController,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.orangeAccent,
                ),
                labelText: 'Current PIN',
                hintStyle: TextStyle(color: Colors.grey,),
              ),
            ),
            TextField(
              controller: _NEWpinController,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.orangeAccent,
                ),
                labelText: 'New PIN',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            TextField(
              controller: _RNEWpinController,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration:  const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.orangeAccent,
                ),
                labelText: 'Retype New PIN',
                hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
              ),
            ),
            SizedBox(height: 50,),

            Container(
              width: 250,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.deepOrange,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  'SUBMIT',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
