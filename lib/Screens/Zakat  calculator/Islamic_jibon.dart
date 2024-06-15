import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';

class IslamicJibonScreen extends StatefulWidget {
  const IslamicJibonScreen({super.key});

  @override
  State<IslamicJibonScreen> createState() => _IslamicJibonScreenState();
}

class _IslamicJibonScreenState extends State<IslamicJibonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              child: const Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_back_ios,size: 25,),
                  SizedBox(width: 100,),
                  Text('ইসলামিক জীবন',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 23,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10.0),
              child: Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Row(

                    children: [

                      Text('রাসুল (সাঃ) এর জীবন ও শিক্ষা',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.shield_moon_outlined, color: Colors.white, size: 38,)
                    ],
                  ),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10.0),
              child: Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(

                    children: [

                      Text('আশুরা',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.star_border, color: Colors.white, size: 38,)
                    ],
                  ),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10.0),
              child: Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(

                    children: [

                      Text('সহীহ হাদিস',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.menu_book_outlined, color: Colors.white, size: 38,)
                    ],
                  ),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10.0),
              child: Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(

                    children: [

                      Text('প্রতিদিনের দোয়া',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.front_hand_rounded, color: Colors.white, size: 38,)
                    ],
                  ),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10.0),
              child: Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(

                    children: [

                      Text('আল্লাহর ৯৯টি নাম',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.border_inner_sharp, color: Colors.white, size: 38,)
                    ],
                  ),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10.0),
              child: Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(

                    children: [
                      Text('ইসলামিক নাম',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.baby_changing_station_rounded, color: Colors.white, size: 38,)
                    ],
                  ),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10.0),
              child: Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(

                    children: [

                      Text('পইসলামিক ওয়ালপেপারা',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.photo, color: Colors.white, size: 38,)
                    ],
                  ),
                ) ,
              ),
            ),

            SizedBox(height: 20),



            Container(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  AppImage.getPath("zagat2"),
                  fit: BoxFit.fill,
                )),
            SizedBox(height: 15),





          ],
        ),
      ),

    );
  }
}
