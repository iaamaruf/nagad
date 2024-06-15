import 'package:flutter/material.dart';
import 'package:nagaad/Screens/Add%20Money/bank_to_nagad.dart';
import 'package:nagaad/Screens/Add%20Money/card_to_nagad.dart';

class AddMoneyScreen extends StatefulWidget {
  static  String routeName = "AddMoneyScreen";
  const AddMoneyScreen({super.key});

  @override
  State<AddMoneyScreen> createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
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
              SizedBox(width: 70,),
              const Text(
                'Add Money',
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
        padding: EdgeInsets.only(left: 20.0, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Add money Source',
              style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black54,
              fontSize: 16,
            ),),
            InkWell(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BankTONagadScreen()),
                );
              },
              child: Container(
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(child: Icon(Icons.food_bank_outlined,size: 35, color: Colors.white,)),

                    ),
                    SizedBox(width: 20,),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bank to Nagad',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                            fontSize: 16,

                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: double.infinity,
              height: 1,
              color: Colors.black54,
            ),

            InkWell(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardToNagadScreen()),
                );
              },
              child: Container(
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(child: Icon(Icons.credit_card,size: 35, color: Colors.white,)),

                    ),
                    SizedBox(width: 20,),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card to Nagad',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                            fontSize: 16,

                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
