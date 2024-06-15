import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';

class IbadatProtidinScreen extends StatefulWidget {
  const IbadatProtidinScreen({super.key});

  @override
  State<IbadatProtidinScreen> createState() => _IbadatProtidinScreenState();
}

class _IbadatProtidinScreenState extends State<IbadatProtidinScreen> {
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
                  Text('ইবাদত প্রতিদিন',
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

                      Text('নামাজের সময়',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.person_remove_alt_1_outlined, color: Colors.white, size: 38,)
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

                      Text('পবিত্র কুরআন ',
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

                      Text('ইলমে আমল ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.my_library_books_outlined, color: Colors.white, size: 38,)
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

                      Text('ইসলামিক ক্যালেন্ডার',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.calendar_month_outlined, color: Colors.white, size: 38,)
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
