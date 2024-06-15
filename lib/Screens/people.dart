import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class PeopleContactScreen extends StatefulWidget {
  static const String routeName = "PeopleContactScreen";
  const PeopleContactScreen({super.key});

  @override
  State<PeopleContactScreen> createState() => _PeopleContactScreenState();
}

class _PeopleContactScreenState extends State<PeopleContactScreen> {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text('People', style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 20,
            ),),

          ),
          automaticallyImplyLeading: false,
          bottom: TabBar(

            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey.shade300,
            tabs: [
              Tab(text: ' CONTACT'),
              Tab(text: 'SAVED UDDOCTA'),
              Tab(text: 'SAVE MARCHENT'),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
           Column(
             children: [
               const TextField(
                 decoration: InputDecoration(
                   hintText: 'Search',
                   prefixIcon: Icon(Icons.search), // Set the search icon as prefix
                   border: UnderlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.grey, // Adjust color as needed
                       width: 2.0, // Adjust thickness as needed
                     ),
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

                             InkWell(
                               onTap: () {

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
                             InkWell(
                               onTap: () {

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

                             InkWell(
                               onTap: () {

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
             Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search), // Set the search icon as prefix
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Adjust color as needed
                        width: 2.0, // Adjust thickness as needed
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 150,),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.people_alt_outlined,size: 55,color: Colors.grey,),
                      const Text('No Uddokta available', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 16,
                      ),),
                      const Text('↻  Tap to refresh ', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 14,
                      ),),
                    ],
                  ),
                )



              ],
            ),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search), // Set the search icon as prefix
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Adjust color as needed
                        width: 2.0, // Adjust thickness as needed
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 150,),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.people_alt_outlined,size: 55,color: Colors.grey,),
                      const Text('No Marchent available', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 16,
                      ),),
                      const Text('↻  Tap to refresh ', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 14,
                      ),),
                    ],
                  ),
                )



              ],
            ),
          ],
        ),
      ),
    );
  }
}
