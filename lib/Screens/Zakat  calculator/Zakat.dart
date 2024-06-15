import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';
import 'package:nagaad/Screens/Zakat%20%20calculator/expandable_container.dart';

class ZakatScreen extends StatefulWidget {
  const ZakatScreen({super.key});

  @override
  State<ZakatScreen> createState() => _ZakatScreenState();
}

class _ZakatScreenState extends State<ZakatScreen> {
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
                  SizedBox(width: 25,),
                  Icon(Icons.arrow_back_ios,size: 25,),
                  SizedBox(width: 100,),
                  Text('যাকাত',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 23,
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  AppImage.getPath("ZakatBanner"),
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Center(
                  child: Text('যাকাত ক্যালকুলেটর',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ) ,
              ),
            ),
            const ExpandableContainer(
              title: 'যাকাত বন্টনের খাত',
              content: ' যাকাত বন্টনের নির্ধারিত ৮টি খাতের বিবরণ :',
            ),
            const ExpandableContainer(
              title: 'যাকাত ফরজ হওয়ার শর্ত',
              content: 'কোন ব্যক্তির ওপর ইবাদত ফরজ হওয়ার জন্য কিছু শর্ত থাকে। যাকাত ফরজ হওয়ার ',
            ),
          const ExpandableContainer(
            title: '  নিসাব',
            content: 'নিসাব (نصاب الزكوة)আরবি শব্দ। ইসলামী শরিয়তের পারিভাষায় যাকাতের নিসাব',
          ),




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
