import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';


class JogajogScreen extends StatefulWidget {
  static const String routeName = "JogajogScreen";
  const JogajogScreen({super.key});

  @override
  State<JogajogScreen> createState() => _JogajogScreenState();
}

class _JogajogScreenState extends State<JogajogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height:320,
                color: Colors.deepOrange,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0, top: 30),
                      child: Image.asset(
                        AppImage.getPath(
                          "Icon",
                        ),
                        fit: BoxFit.fill,
                        color: Colors.white.withOpacity(.2),
                      ),
                    ),
                  ],
                ),
              ),

              const Center(
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Text(
                      'যোগাযোগ করুন ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white, // Text color
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'যেকোনো প্রয়োজনে',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white, // Text color
                      ),
                    ),
                    Text(
                      'পাশে পাবেন সবসময় ',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white, // Text color
                      ),
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.call, size: 80,color: Colors.white,),
                        Icon(Icons.message_rounded, size: 80,color: Colors.white,),
                      ],
                    )
                  ],
                ),
              ),

          ]
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 140,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34),
                            color: Colors.grey.shade300,
                          ),
                          child: Icon(Icons.call,color: Colors.deepOrange,size: 33,),
                        ),
                        const Text(
                          '16167',
                          style: TextStyle(fontSize: 14,
                              fontWeight:FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34),
                            color: Colors.grey.shade300,
                          ),
                          child: Icon(Icons.call,color: Colors.deepOrange,size: 33,),
                        ),
                        const Text(
                          '096 09616167',
                          style: TextStyle(fontSize: 14,
                              fontWeight:FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34),
                            color: Colors.grey.shade300,
                          ),
                          child: Icon(Icons.mail,color: Colors.deepOrange,size: 33,),
                        ),
                        const Text(
                          'info@nagad.com.bd',
                          style: TextStyle(fontSize: 14,
                              fontWeight:FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 15,
                  color: Colors.grey,
                  thickness: 0.5,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'নগদ সেবা ',
                      style: TextStyle(fontSize: 22,
                          fontWeight:FontWeight.w600,
                          color: Colors.deepOrange),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                        margin:EdgeInsets.only(left: 8, right: 8,top: 5,bottom: 5),
                        height: 140,
                        width: double.infinity,

                        decoration: BoxDecoration(

                          color: Colors.white
                        ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.all(8),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(34),
                              color: Colors.grey.shade300,
                            ),
                            child: Image.asset(
                              AppImage.getPath(
                                "Icon",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 5,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gaibandha Head Post Office ',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                 SizedBox(width: 50,),
                                  Text(
                                    'ম্যাপ দেখুন',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                              Text(
                                'Gaibandha Head Post Office(bside Boro mosjid)\n'
                                    'V-Aid Road,Puratan Bazar, Gaibandha Road,\n'
                                    'Gaibandha 5700',
                                style: TextStyle(fontSize: 14,
                                    fontWeight:FontWeight.w400,
                                    color: Colors.black),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Counter Number:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' 1',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'সময়সীমা:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' ৯:০০ AM-৪:০০ PM',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),



                            ],
                          )
                        ],
                      )
                      ,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin:EdgeInsets.only(left: 8, right: 8,top: 5,bottom: 5),
                      height: 140,
                      width: double.infinity,

                      decoration: BoxDecoration(

                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.all(8),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(34),
                              color: Colors.grey.shade300,
                            ),
                            child: Image.asset(
                              AppImage.getPath(
                                "Icon",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 5,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gaibandha Head Post Office ',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'ম্যাপ দেখুন',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                              Text(
                                'Gaibandha Head Post Office(bside Boro mosjid)\n'
                                    'V-Aid Road,Puratan Bazar, Gaibandha Road,\n'
                                    'Gaibandha 5700',
                                style: TextStyle(fontSize: 14,
                                    fontWeight:FontWeight.w400,
                                    color: Colors.black),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Counter Number:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' 1',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'সময়সীমা:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' ৯:০০ AM-৪:০০ PM',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),



                            ],
                          )
                        ],
                      )
                      ,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin:EdgeInsets.only(left: 8, right: 8,top: 5,bottom: 5),
                      height: 140,
                      width: double.infinity,

                      decoration: BoxDecoration(

                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.all(8),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(34),
                              color: Colors.grey.shade300,
                            ),
                            child: Image.asset(
                              AppImage.getPath(
                                "Icon",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 5,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gaibandha Head Post Office ',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'ম্যাপ দেখুন',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                              Text(
                                'Gaibandha Head Post Office(bside Boro mosjid)\n'
                                    'V-Aid Road,Puratan Bazar, Gaibandha Road,\n'
                                    'Gaibandha 5700',
                                style: TextStyle(fontSize: 14,
                                    fontWeight:FontWeight.w400,
                                    color: Colors.black),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Counter Number:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' 1',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'সময়সীমা:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' ৯:০০ AM-৪:০০ PM',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),



                            ],
                          )
                        ],
                      )
                      ,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin:EdgeInsets.only(left: 8, right: 8,top: 5,bottom: 5),
                      height: 140,
                      width: double.infinity,

                      decoration: BoxDecoration(

                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.all(8),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(34),
                              color: Colors.grey.shade300,
                            ),
                            child: Image.asset(
                              AppImage.getPath(
                                "Icon",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 5,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gaibandha Head Post Office ',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'ম্যাপ দেখুন',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                              Text(
                                'Gaibandha Head Post Office(bside Boro mosjid)\n'
                                    'V-Aid Road,Puratan Bazar, Gaibandha Road,\n'
                                    'Gaibandha 5700',
                                style: TextStyle(fontSize: 14,
                                    fontWeight:FontWeight.w400,
                                    color: Colors.black),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Counter Number:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' 1',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'সময়সীমা:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' ৯:০০ AM-৪:০০ PM',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),



                            ],
                          )
                        ],
                      )
                      ,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin:EdgeInsets.only(left: 8, right: 8,top: 5,bottom: 5),
                      height: 140,
                      width: double.infinity,

                      decoration: BoxDecoration(

                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.all(8),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(34),
                              color: Colors.grey.shade300,
                            ),
                            child: Image.asset(
                              AppImage.getPath(
                                "Icon",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 5,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gaibandha Head Post Office ',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'ম্যাপ দেখুন',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                              Text(
                                'Gaibandha Head Post Office(bside Boro mosjid)\n'
                                    'V-Aid Road,Puratan Bazar, Gaibandha Road,\n'
                                    'Gaibandha 5700',
                                style: TextStyle(fontSize: 14,
                                    fontWeight:FontWeight.w400,
                                    color: Colors.black),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Counter Number:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' 1',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'সময়সীমা:',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    ' ৯:০০ AM-৪:০০ PM',
                                    style: TextStyle(fontSize: 14,
                                        fontWeight:FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),



                            ],
                          )
                        ],
                      )
                      ,
                    ),
                  ),
                  SizedBox(height: 5,),
            
            
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
