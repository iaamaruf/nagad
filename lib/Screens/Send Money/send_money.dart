import 'package:flutter/material.dart';
import 'package:nagaad/Screens/Send%20Money/send_money_details.dart';

class SendMoneyScreen extends StatelessWidget {
  static  String routeName = "SendMoneyScreen";
   SendMoneyScreen({ super.key});


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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 120,
              width: double.infinity,
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
                        fontSize: 16,
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
                      const Text('Enter Name, 11 Digit Mobile Number or 16-'
                          'digit \nVirtical Card Number', style: TextStyle(
                        fontWeight: FontWeight.w400,
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: double.infinity,
                          color: Colors.grey.shade100,
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Recent',
                                  style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),),
                              ),
                              const SizedBox(
                                height: 5,),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade200,
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
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
                                 Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Jahid Bhai',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 17,

                                      ),
                                    ),
                                    const Text(
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

                                    Container(
                                      width: 300,
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Aslam Bhai',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 17,

                                      ),
                                    ),
                                    const Text(
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

                                    Container(
                                      width: 300,
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Nadim Ewu',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 17,

                                      ),
                                    ),
                                    const Text(
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

                                    Container(
                                      width: 300,
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: double.infinity,
                          color: Colors.grey.shade100,
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Favorite',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),),
                              ),
                              SizedBox(
                                height: 5,),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade200,
                              )
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Nadim Ewu',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 17,

                                      ),
                                    ),
                                    const Text(
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

                                    Container(
                                      width: 300,
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: double.infinity,
                          color: Colors.grey.shade100,
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('ALl Contacts',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),),
                              ),
                              const SizedBox(
                                height: 5,),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade200,
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
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
                                Column(
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

                                    Container(
                                      width: 300,
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Aslam Bhai',
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

                                    Container(
                                      width: 300,
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nadim Ewu',
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

                                    Container(
                                      width: 300,
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Aslam Bhai',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 17,

                                      ),
                                    ),
                                    const Text(
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

                                    Container(
                                      width: 300,
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      
    );
  }
}
