import 'package:flutter/material.dart';
import 'package:nagaad/Screens/Zakat%20%20calculator/Ibadat_protidin.dart';
import 'package:nagaad/Screens/Zakat%20%20calculator/Islamic_jibon.dart';
import 'package:nagaad/Screens/Zakat%20%20calculator/Zakat.dart';

class ZakatCalculatorScreen extends StatefulWidget {
  static const String routeName = "ZakatCalculatorScreen";
  const ZakatCalculatorScreen({super.key});

  @override
  State<ZakatCalculatorScreen> createState() => _ZakatCalculatorScreenState();
}

class _ZakatCalculatorScreenState extends State<ZakatCalculatorScreen> {
  int myIndex = 0;
  List<Widget> widgetList= const [
    ZakatScreen(),
    IbadatProtidinScreen(),
    IslamicJibonScreen(),
  ];
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
                'Zakat Calculator',
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
      body: Center(
        child: widgetList[myIndex],
      ),


      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.grey,
        unselectedItemColor: Colors.green,

        onTap: (index){
          setState(() {
            myIndex= index;
          });

        },
        currentIndex:myIndex ,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center, size: 40,),
            label: 'যাকাত',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center, size: 40,),
            label: 'ইবাদাত প্রতিদিন ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center, size: 40,),
            label: 'ইসলামিক জীবন',
          ),
        ],
      ),


    );
  }
}

