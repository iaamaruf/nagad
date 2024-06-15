import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nagaad/Screens/My%20Profile/my_profile.dart';
import 'package:nagaad/Screens/home.dart';
import 'package:nagaad/Screens/people.dart';
import 'package:nagaad/Screens/transaction.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = "BottomBar";
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(

      bottomNavigationBar: Obx(
            ()=> NavigationBar(

          height: 60,
          elevation: 0,

          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value=index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.receipt_long), label: 'Transaction'),
            NavigationDestination(icon: Icon(Icons.people), label: 'People'),
            NavigationDestination(icon: Icon(Icons.density_medium_rounded), label: 'My Nadad'),

          ],

        ),
      ),
      body:Obx(()=> controller.screen[controller.selectedIndex.value]),

    );
  }
}
class NavigationController extends GetxController {
  final Rx<int> selectedIndex=0.obs;
  final screen=[  HomeScreen(), TransactionScreen(), PeopleContactScreen(), ProfileScreen()];
}