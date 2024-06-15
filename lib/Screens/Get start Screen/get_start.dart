import 'package:flutter/material.dart';
import 'package:nagaad/Common/Button/default_button.dart';
import 'package:nagaad/Common/Utilities/bottom_bar.dart';
import 'package:nagaad/Common/Utilities/image.dart';
import 'package:nagaad/Screens/Get%20start%20Screen/forget_pin.dart';
import 'package:nagaad/Screens/Get%20start%20Screen/jogajoc_info.dart';
import 'package:url_launcher/url_launcher.dart';

class GetStartScreen extends StatefulWidget {
  static const String routeName = "GetStartScreen";

  const GetStartScreen({super.key});

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  TextEditingController _pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
                  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 25,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'En',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
                  ),
                  Container(
            height: 160,
            width: 120,
            child: Image.asset(
              AppImage.getPath("twit_logo"),
              fit: BoxFit.fill,
            )),
                  SizedBox(height: 10,),
                  const Text(
          'Phone Number',
          style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const Text(
          '01733-682541',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              controller: _pinController,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.orangeAccent,
                                ),
                                labelText: 'PIN',
                              ),
                            ),
                  ),


                  Padding(
                            padding: const EdgeInsets.only(left: 60.0, right: 60, top: 20),
                            child: DefaultButtonWithGradient(
                              paddingBottom: 10,
                              paddingTop: 10,
                              buttonText: "LOGIN",
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                  builder: (context) => BottomBar(),
                                  ),
                                );
                              },
                            ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPINScreen()),
                      );
                    },
                    child: const Text(
                      'Forget PIN?',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            launch('https://https://www.google.com/maps/');
                          },
                          child: const Column(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                size: 30,
                                color: Colors.deepOrange,
                              ),
                              Text(
                                'Location',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            launch('https://www.bkash.com/');
                          },
                          child: const Column(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 30,
                                color: Colors.deepOrange,
                              ),
                              Text(
                                'Offers',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => JogajogScreen()),
                            );
                          },

                          child: const Column(
                            children: [
                              Icon(
                                Icons.messenger_rounded,
                                size: 30,
                                color: Colors.deepOrange,
                              ),
                              Text(
                                'Help',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ])),
    );
  }
}
