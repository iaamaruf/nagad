import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
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
                'Select Bank/Card',
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
          Container(
            margin: EdgeInsets.all(15),
            height: 120,
            width: double.infinity,
            color: Colors.white,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                    height: 100 ,
                    child: Icon(Icons.perm_device_info_outlined,size: 30, color: Colors.deepOrange,)),
                const SizedBox(width: 8,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Bank Name', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 15,
                    ),),
                    Container(
                      width: 320,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('Enter Bank/Card Name', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 14,
                    ),),



                  ],
                )
              ],
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
                        InkWell(
                          onTap: () {
                            //
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            // );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 55,
                                    width: 55,
                                    padding: EdgeInsets.all(7),
                                    margin: EdgeInsets.only(left: 15,top: 15),
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'VISA DEBIT CARD  ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 17,

                                      ),
                                    ),
                                    SizedBox(height: 30,),
                                    Container(
                                      width: 295,
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => SendMoneyDetailsScreen()),
                            // );
                          },
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            color: Colors.grey.shade100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 55,
                                    width: 55,
                                    padding: EdgeInsets.all(7),
                                    margin: EdgeInsets.only(left: 15,top: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.white,

                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Image.asset(
                                      AppImage.getPath("Sonali"),
                                      fit: BoxFit.fill,
                                    )



                                ),
                                SizedBox(width: 20,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Sonali Bank Ltd',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 17,

                                      ),
                                    ),
                                    SizedBox(height: 30,),
                                    Container(
                                      width: 295,
                                      height: 2,
                                      color: Colors.grey.shade300,
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
                ],
              ),
            ),
          )



        ],
      ),
    );
  }
}
