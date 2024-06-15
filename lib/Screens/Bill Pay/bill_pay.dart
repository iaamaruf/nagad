import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';

class BillPayScreen extends StatefulWidget {
  static const String routeName = "BillPayScreen";
  const BillPayScreen({super.key});

  @override
  State<BillPayScreen> createState() => _BillPayScreenState();
}

class _BillPayScreenState extends State<BillPayScreen> {
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
                'Bill Pay',
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
            height: 210,
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
                Container(
                  margin: EdgeInsets.only(top: 15,left: 15,right: 15),
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
                          const Text('Biller', style: TextStyle(
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 15,left: 0,right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Bill Typs',
                            style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54),
                          ),
                        ],

                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Electricity',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Gas',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Internet',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Water',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 105,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'TV & \nTelepgone',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Education',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Bank & FI',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Insurance',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 105,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Covid 19\n Fee',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'ekpay',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Ministry of Land',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(15),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Credit Card',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          InkWell(
                            // onTap: () {
                            //
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            //   );
                            // },

                            child: SizedBox(
                              height: 105,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(10),
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
                                  const SizedBox(height: 10,),
                                  const Text(
                                    'Others',
                                    style: TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
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
                                          AppImage.getPath("dpdc"),
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
                                          'DPDC\n1014 ',
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
                                          AppImage.getPath("jalalabad"),
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
                                          'Jalalabad\n1014 ',
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
                                          AppImage.getPath("Nesco"),
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
                                          'Nesco Postpaid\1740 ',
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
                                          AppImage.getPath("dpdc"),
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
                                          'DPDC\n1014 ',
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
                                          AppImage.getPath("jalalabad"),
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
                                          'Jalalabad\n1014 ',
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
                                          AppImage.getPath("Nesco"),
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
                                          'Nesco Postpaid\1740 ',
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
                                          AppImage.getPath("dpdc"),
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
                                          'DPDC\n1014 ',
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
                                          AppImage.getPath("jalalabad"),
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
                                          'Jalalabad\n1014 ',
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
                                          AppImage.getPath("Nesco"),
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
                                          'Nesco Postpaid\1740 ',
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
