import 'package:flutter/material.dart';

class TrastedMarchentScreen extends StatelessWidget {
  static const String routeName = "AboutScreen";
  const TrastedMarchentScreen({super.key});

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
                'Trasted Marchent List',
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
      body:  const Padding(
        padding: EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.storage, size: 50,color: Colors.grey,),
              SizedBox(height: 10,),
              Text(
                'No Data Available',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              Text(
                '↻ Tap to Refresh',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
