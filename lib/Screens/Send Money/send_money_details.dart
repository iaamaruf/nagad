import 'package:flutter/material.dart';

class SendMoneyDetailsScreen extends StatelessWidget {
  const SendMoneyDetailsScreen({super.key });

  @override
  Widget build(BuildContext context) {
    TextEditingController _pinController = TextEditingController();
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
              SizedBox(width: 70,),
              const Text(
                ' Send Money',
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

      body:  Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 90,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            width: double.infinity,

            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(child: Icon(Icons.person,size: 55, color: Colors.grey,)),

                ),
                SizedBox(width: 20,),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jahid Bhai',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        fontSize: 17,

                      ),
                    ),
                    Text(
                      '01701-017011',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              controller: _pinController,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.currency_bitcoin_outlined,
                  color: Colors.orangeAccent,
                ),
                labelText: 'Amount',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 25),

              ),
            ),
          ),
          SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Available Balance:',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                  fontSize: 18,

                ),
              ),
              Text(
                ' 42.50 Taka',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 18,

                ),
              ),


            ],
          ),
          SizedBox(height: 50,),
          Container(
            height: 40,
            padding: EdgeInsets.all(5),
            width: 250,

            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.deepOrange, // Change border color here
                width: 1.4, // Change border width here
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child:Center(
              child: const Text(
                'NEXT',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                  fontSize: 20,

                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
