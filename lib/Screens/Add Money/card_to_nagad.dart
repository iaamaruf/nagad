import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';
import 'package:nagaad/Screens/Add%20Money/add_money_details.dart';

class CardToNagadScreen extends StatefulWidget {
  const CardToNagadScreen({super.key});

  @override
  State<CardToNagadScreen> createState() => _CardToNagadScreenState();
}

class _CardToNagadScreenState extends State<CardToNagadScreen> {
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
                'Card to Nagad',
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
            const Text('Choose Source',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black54,
                fontSize: 16,
              ),),
            InkWell(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMoneyDetailsScreen()),
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
                        height: 45,
                        width: 45,
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.only(left: 15,top: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          AppImage.getPath("MAsterCard"),
                          fit: BoxFit.fill,
                        )
                    ),
                    SizedBox(width: 20,),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mastercard',
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
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade300,
            ),

            InkWell(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMoneyDetailsScreen()),
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
                        height: 55,
                        width: 55,
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.only(left: 15,top: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          AppImage.getPath("VISA"),
                          fit: BoxFit.fill,
                        )
                    ),
                    SizedBox(width: 20,),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VISA',
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
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade300,
            ),



          ],
        ),
      ),
    );
  }
}
