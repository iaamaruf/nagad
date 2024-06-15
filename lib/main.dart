import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/bottom_bar.dart';
import 'package:nagaad/Screens/Add%20Money/add_money.dart';
import 'package:nagaad/Screens/Get%20start%20Screen/get_start.dart';
import 'package:nagaad/Screens/My%20Profile/about.dart';
import 'package:nagaad/Screens/My%20Profile/change_mobile_operator.dart';
import 'package:nagaad/Screens/My%20Profile/edit_profile.dart';
import 'package:nagaad/Screens/Notification/notification_details.dart';
import 'package:nagaad/Screens/Send%20Money/send_money.dart';
import 'package:nagaad/Screens/Splash%20Screen/splash_screen.dart';
import 'package:nagaad/Screens/Zakat%20%20calculator/Zakat_calculator.dart';
import 'package:nagaad/Screens/home.dart';
import 'package:nagaad/Screens/people.dart';
import 'package:nagaad/Screens/transaction.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nagad App',
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context)=>SplashScreen(),
        GetStartScreen.routeName : (context)=>  GetStartScreen(),
        HomeScreen.routeName : (context)=>  HomeScreen(),
        BottomBar.routeName : (context)=>  BottomBar(),
        PeopleContactScreen.routeName : (context)=>  PeopleContactScreen(),
        TransactionScreen.routeName : (context)=>  TransactionScreen(),
        NotificationDetailsScreen.routeName : (context)=>  NotificationDetailsScreen(),
        SendMoneyScreen.routeName : (context)=>  SendMoneyScreen(),
        AddMoneyScreen.routeName : (context)=>  AddMoneyScreen(),
        AboutScreen.routeName : (context)=>  AboutScreen(),
        ChangeMobileOperatoeScreen.routeName : (context)=>  ChangeMobileOperatoeScreen(),
        EditProfileScreen.routeName : (context)=>  EditProfileScreen(),
        ZakatCalculatorScreen.routeName : (context)=>  ZakatCalculatorScreen(),





      },
    );
  }
}


