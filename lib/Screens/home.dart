import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nagaad/API%20Service/repo.dart';
import 'package:nagaad/Common/Utilities/image.dart';
import 'package:nagaad/Common/Utilities/utility.dart';
import 'package:nagaad/Screens/Add%20Money/add_money.dart';
import 'package:nagaad/Screens/Bill%20Pay/bill_pay.dart';
import 'package:nagaad/Screens/Cash%20Out/cash_out.dart';
import 'package:nagaad/Screens/Donation/donation.dart';
import 'package:nagaad/Screens/EMI%20Payments/emi_payments.dart';
import 'package:nagaad/Screens/Get%20start%20Screen/jogajoc_info.dart';
import 'package:nagaad/Screens/Limits%20and%20Charges/limits_charges.dart';
import 'package:nagaad/Screens/Marchent%20Pay/marchent_pay.dart';
import 'package:nagaad/Screens/Mobile%20Recharge/mobile_recharge.dart';
import 'package:nagaad/Screens/More%20Services/more_services.dart';
import 'package:nagaad/Screens/Send%20Money/send_money.dart';
import 'package:nagaad/Screens/Transfer%20Money/transfer_money.dart';
import 'package:nagaad/Screens/Zakat%20%20calculator/Zakat_calculator.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Notification/notification.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    'Assets/Image/slider1.png',
    'Assets/Image/slider44.png',
    'Assets/Image/sliderff.png',
    'Assets/Image/slider4.png',
  ];
  final CarouselController _controller = CarouselController();

  int _currentIndex = 0;
  bool _showBalance = false;
  int _balance = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepOrange,
            child: Column(
              children: [
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                      width: 198,
                      child: Image.asset(
                        AppImage.getPath(
                          "nagadLogoWine",
                        ),
                        fit: BoxFit.fill,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                     Padding(
                      padding: EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: ()

                          // ApiServices.enrolmentTransportListApi().then((value) async {
                          //   Utility.pop();
                          //   if(value.data != null){
                          //     commonProvider.setPackageList(value.data!);
                          //     commonProvider.packageName = commonProvider.getTourTypeList()![index].tourType!;
                          //     Navigator.of(context).pushNamed(PackageListScreen.routeName);
                          //   } else {
                          //     Utility.showSnackBar(value.errorMessage??" data not retrieved");
                          //   }
                          // });


                        => Navigator.push(
                      context,
                          MaterialPageRoute(builder: (context) => NotificationScreen()),
                        ),

                        child: const Icon(
                          Icons.notifications_active_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10,right: 5),
                    height: 40,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  GestureDetector(
                      onTap: () {
                        setState(() {
                          _showBalance = !_showBalance;
                        });
                      },
                      child: Row(
                        children: [
                        SizedBox(
                        height: 29,
                        width: 25,
                        child: Image.asset(
                          AppImage.getPath(
                            "logoIcon",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                          const SizedBox(width: 4,),

                      Center(
                        child: _showBalance
                            ? Text(
                          '        $_balance',
                          style: TextStyle(fontSize: 20, color: Colors.deepOrange,fontWeight: FontWeight.w500),
                        )
                            : const Text(
                          'Tap to see balance', // Show this text initially
                          style: TextStyle(fontSize: 18, color: Colors.deepOrange,fontWeight: FontWeight.w500),
                        ),
                      ),
                        ],
                      ),
                    )),
              ],
            ),
          ),

           Expanded(
             child: SingleChildScrollView(
               child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Service',
                          style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                      ],

                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SendMoneyScreen()),
                            );
                          },

                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Send Money',
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
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CashOutScreen()),
                            );
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Cash Out',
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
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MobileRechargeScreen()),
                            );
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Mobile\nRecharge',
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
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AddMoneyScreen()),
                            );
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Add Money',
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
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TransferScreen()),
                            );
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Transfer\nMoney',
                                  style: TextStyle(fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),

                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        GestureDetector(
                          onTap: () {
                            launch('https://nagadislamic.com.bd/en/service/islamic-insurance-2/');
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Insurance\nPolicy',
                                  style: TextStyle(fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),

                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MoreServicesScreen()),
                            );
                          },

                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'More Service',
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
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Payments',
                          style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                      ],

                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MarchentPayScreen()),
                            );
                          },

                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Merchant Pay',
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BillPayScreen()),
                            );
                          },

                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Bill Pay',
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EMIPaymentsScreen()),
                            );
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'EMI Payment',
                                  style: TextStyle(fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),

                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 120,
                          child: Column(
                            children: [
                              Container(
                                height: 78,
                                width: 78,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset(
                                  AppImage.getPath(
                                    "Icon",
                                  ),
                                  fit: BoxFit.fill,
                                  color: Colors.white,
                                ),

                              ),
                              const SizedBox(height: 5,),
                              const Text(
                                'Nagad Mela',
                                style: TextStyle(fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5,),


                    CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                        height: 120.0,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: imageList.map((imagePath) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(imagePath),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        int index = entry.key;
                        return GestureDetector(
                          onTap: () {
                            _controller.animateToPage(index);
                          },
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == index ? Colors.blue : Colors.grey,
                            ),
                          ),
                        );
                      }).toList(),
                    ),



                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Others',
                          style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                      ],

                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => JogajogScreen()),
                            );
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Contact with\nUs',
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ZakatCalculatorScreen()),
                            );
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Zakat\nCalculation',
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
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LimitsAndChargesScreen()),
                            );
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Limits and\ncharge',
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
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DonationScreen()),
                            );
                          },
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    AppImage.getPath(
                                      "Icon",
                                    ),
                                    fit: BoxFit.fill,
                                    color: Colors.white,
                                  ),

                                ),
                                const SizedBox(height: 5,),
                                const Text(
                                  'Donation',
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
