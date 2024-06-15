import 'package:flutter/material.dart';
class LimitsAndChargesScreen extends StatefulWidget {
  const LimitsAndChargesScreen({super.key});

  @override
  State<LimitsAndChargesScreen> createState() => _LimitsAndChargesScreenState();
}

class _LimitsAndChargesScreenState extends State<LimitsAndChargesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Center(
            child: Text('Limits and Charges', style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 22,
            ),),

          ),
          automaticallyImplyLeading: false,
          bottom: TabBar(

            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey.shade300,
            tabs: const [
              Tab(text: 'CHARGES'),
              Tab(text: 'DAILY'),
              Tab(text: 'MONTHLY'),
              Tab(text: 'RANGES'),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            Column(

              children: [
             SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                  height: 35,
                  width: 90,
                  color: Colors.white,
                  child:const Text('Sevice Name', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                    fontSize: 18,
                  ),),
                ),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 90,
                      color: Colors.white,
                      child:const Text('Charge(App)', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                        fontSize: 22,
                      ),),
                    ),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 90,
                      color: Colors.white,
                      child:const Text('Charge(USSD)', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                        fontSize: 22,
                      ),),
                    ),


                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Sevice Name', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 18,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(App)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(USSD)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Sevice Name', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 18,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(App)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(USSD)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Sevice Name', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 18,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(App)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(USSD)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Sevice Name', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 18,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(App)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(USSD)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Sevice Name', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 18,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(App)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(USSD)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Sevice Name', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 18,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(App)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        color: Colors.white,
                        child:const Text('Charge(USSD)', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),),
                      ),


                    ],
                  ),
                ),



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
