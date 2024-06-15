import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';

class ChangeMobileOperatoeScreen extends StatefulWidget {
  static const String routeName = "ChangeMobileOperatoeScreen";
  const ChangeMobileOperatoeScreen({super.key});

  @override
  State<ChangeMobileOperatoeScreen> createState() => _ChangeMobileOperatoeScreenState();
}

class _ChangeMobileOperatoeScreenState extends State<ChangeMobileOperatoeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                'Change Operator ',
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.settings_input_antenna_outlined, size: 120,color: Colors.deepOrange,),
              SizedBox(height: 10,),
              const Text(
                'Mobile Operator',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Select your updated Mobile Operator',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 78,
                width: 277,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  height: 50,
                  width: 120,
                  child: Image.asset(
                    AppImage.getPath(
                      "GP",
                    ),
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
