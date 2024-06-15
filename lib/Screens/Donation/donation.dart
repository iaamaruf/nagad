import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
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
                width: 120,
              ),
              const Text(
                'Donation',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            height: 120,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15,left: 15,right: 15),
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                          height: 80 ,
                          child: Icon(Icons.perm_device_info_outlined,size: 30, color: Colors.deepOrange,)),
                      const SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Recipient', style: TextStyle(
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
                          const Text('Enter Biller Name or Biller Number', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 14,
                          ),),



                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Marchent List',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 0,right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 55,
                                        padding: EdgeInsets.all(7),
                                        margin: const EdgeInsets.only(left: 15,top: 15),
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          AppImage.getPath("apon_bondhon"),
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Apon Bhubon\n01838641917 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 17,

                                          ),
                                        ),
                                        SizedBox(height: 15,),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 55,
                                        padding: EdgeInsets.all(1),
                                        margin: const EdgeInsets.only(left: 15,top: 15),
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          AppImage.getPath("B_thalasemia"),
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Banhladesh Thalasemia Foundation\n01729-284257 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 17,

                                          ),
                                        ),
                                        SizedBox(height: 15,),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 55,
                                        padding: EdgeInsets.all(2),
                                        margin: const EdgeInsets.only(left: 15,top: 15),
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          AppImage.getPath("Amrai_kingB"),
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Amrai Kingbodonti\n01406002000 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 17,

                                          ),
                                        ),
                                        SizedBox(height: 15,),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 55,
                                        padding: EdgeInsets.all(7),
                                        margin: const EdgeInsets.only(left: 15,top: 15),
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          AppImage.getPath("apon_bondhon"),
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Apon Bhubon\n01838641917 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 17,

                                          ),
                                        ),
                                        SizedBox(height: 15,),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 55,
                                        padding: EdgeInsets.all(1),
                                        margin: const EdgeInsets.only(left: 15,top: 15),
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          AppImage.getPath("B_thalasemia"),
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Banhladesh Thalasemia Foundation\n01729-284257 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 17,

                                          ),
                                        ),
                                        SizedBox(height: 15,),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 55,
                                        padding: EdgeInsets.all(2),
                                        margin: const EdgeInsets.only(left: 15,top: 15),
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          AppImage.getPath("Amrai_kingB"),
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Amrai Kingbodonti\n01406002000 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 17,

                                          ),
                                        ),
                                        SizedBox(height: 15,),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 55,
                                        padding: EdgeInsets.all(7),
                                        margin: const EdgeInsets.only(left: 15,top: 15),
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          AppImage.getPath("apon_bondhon"),
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Apon Bhubon\n01838641917 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 17,

                                          ),
                                        ),
                                        SizedBox(height: 15,),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 55,
                                        padding: EdgeInsets.all(1),
                                        margin: const EdgeInsets.only(left: 15,top: 15),
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          AppImage.getPath("B_thalasemia"),
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Banhladesh Thalasemia Foundation\n01729-284257 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 17,

                                          ),
                                        ),
                                        SizedBox(height: 15,),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 55,
                                        padding: EdgeInsets.all(2),
                                        margin: const EdgeInsets.only(left: 15,top: 15),
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset(
                                          AppImage.getPath("Amrai_kingB"),
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Amrai Kingbodonti\n01406002000 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 17,

                                          ),
                                        ),
                                        SizedBox(height: 15,),
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
                      ],
                    )




                  ],
                ),
              ),
            ),
          )



        ],
      ),

    );
  }
}
