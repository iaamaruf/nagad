import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TransactionScreen extends StatefulWidget {
  static const String routeName = "TransactionScreen";
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Transaction',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.deepOrange,
        ),
        body:  Column(
          children: [
            TabBar(
              indicatorColor: Colors.deepOrange,
              labelColor: Colors.deepOrange,
              tabs: [
                Tab(text: 'ALL'),
                Tab(text: 'IN'),
                Tab(text: 'OUT'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: <Widget>[
                      // CalendarHeader(),
                      Expanded(
                        child: ListView(
                          children: <Widget>[
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mobile Recharge',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '30',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 25, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_forward, color: Colors.green,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash In',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '2000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 26, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash Out',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 17, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mobile Recharge',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '30',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 25, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_forward, color: Colors.green,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash In',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 26, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash Out',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 17, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mobile Recharge',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '30',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 25, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_forward, color: Colors.green,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash In',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '5000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 26, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash Out',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 17, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mobile Recharge',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '30',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 25, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_forward, color: Colors.green,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash In',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '300',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 26, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash Out',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 17, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      // CalendarHeader(),
                      Expanded(
                        child: ListView(
                          children: <Widget>[

                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_forward, color: Colors.green,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash In',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '2000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 26, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),

                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_forward, color: Colors.green,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash In',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 26, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),

                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_forward, color: Colors.green,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash In',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '5000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 26, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),

                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_forward, color: Colors.green,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash In',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '300',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 26, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),


                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      // CalendarHeader(),
                      Expanded(
                        child: ListView(
                          children: <Widget>[
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mobile Recharge',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '30',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 25, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),

                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash Out',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 17, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mobile Recharge',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '30',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 25, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),

                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash Out',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 17, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mobile Recharge',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '30',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 25, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),

                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash Out',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 17, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mobile Recharge',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '30',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 25, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),
                            Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back, color: Colors.red,),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash Out',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'My Number',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '1000',
                                            style: TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                          Text(
                                            'Feb 17, 10:04 AM',
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Divider(
                                      height: 15,
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),


                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
