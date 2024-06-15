import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';

class EMIPaymentsScreen extends StatefulWidget {
  const EMIPaymentsScreen({super.key});

  @override
  State<EMIPaymentsScreen> createState() => _EMIPaymentsScreenState();
}

class _EMIPaymentsScreenState extends State<EMIPaymentsScreen> {
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
                width: 80,
              ),
              const Text(
                'EMI Payment',
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
            height: 80,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,right: 25,top: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent.shade100.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text(
                            'Bill Pay',
                            style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 150,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent.shade100.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text(
                            'Receipts',
                            style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 15,left: 0,right: 0),
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Aspada Paribesh Unnayon Foundation',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'BURO Bangladesh',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Ambala Foundation',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Padakkhep Unnayon kotripokkho',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Aspada Paribesh Unnayon Foundation',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'BURO Bangladesh',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Ambala Foundation',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Padakkhep Unnayon kotripokkho',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Aspada Paribesh Unnayon Foundation',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'BURO Bangladesh',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Ambala Foundation',
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
                                    SizedBox(width: 12,),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AppImage.getPath(
                                          "Icon",
                                        ),
                                        fit: BoxFit.fill,
                                        color: Colors.deepOrange,
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        const Text(
                                          'Padakkhep Unnayon kotripokkho',
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
