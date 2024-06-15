import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/bottom_sheet.dart';
import 'package:nagaad/Screens/Get%20start%20Screen/get_start.dart';
import 'package:nagaad/Screens/My%20Profile/about.dart';
import 'package:nagaad/Screens/My%20Profile/change_mobile_operator.dart';
import 'package:nagaad/Screens/My%20Profile/change_pin.dart';
import 'package:nagaad/Screens/My%20Profile/edit_profile.dart';
import 'package:nagaad/Screens/My%20Profile/trasted_marchants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "ProfileScreen";
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  TextEditingController pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final String name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 180,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange,
              Colors.deepOrange,
              Colors.deepOrange,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "My Nagad",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    // onTap: () {
                    //   Navigator.of(context).pop();
                    // },
                    child: Container(
                      height: 62,
                      width: 62,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 55,
                      ),
                      // child: Image.asset(
                      //   AppImage.getPath("maruf_pic"),
                      //   fit: BoxFit.fill,
                      // ),
                    )),
                SizedBox(
                  width: 20,
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Maruf',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 0),
                    Text(
                      '01733682541',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(EditProfileScreen.routeName);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "General",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showCustomBottomSheet(
                    context,
                    Container(
                      height: 220,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    (Icons.message_rounded),
                                    size: 40,
                                    color: Colors.deepOrange,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Do you want to change the application language to বাংলা?',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'NO',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'YES',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.g_translate_outlined,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Language",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Text(
                      "English  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
              InkWell(
                onTap: () {
                  showCustomBottomSheet(
                    context,
                    Container(
                      height: 320,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    (Icons.message_rounded),
                                    size: 40,
                                    color: Colors.deepOrange,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Settings',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Do you want to change your account to Islamic Account? '
                              'Please confirm your action by using your PIN?',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100.0),
                              child: TextField(
                                controller: pinController,
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
                            SizedBox(
                              height: 35,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'CANCEL',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  'CONFIRM',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.person_search,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Acount Type",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Text(
                      "Regular  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
              InkWell(
                onTap: () {
                  showCustomBottomSheet(
                    context,
                    Container(
                      height: 220,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    (Icons.message_rounded),
                                    size: 40,
                                    color: Colors.deepOrange,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Settings',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Do you want to change your Non-Profit account to a Profit account?',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    'NO',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Text(
                                  'YES',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.show_chart,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "I Want Profit",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Text(
                      "No  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'This is a bottom sheet!',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ChangPinScreen(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                      Icon(
                        Icons.lock,
                        size: 28,
                        color: Colors.deepOrange,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Change PIN",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black54),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
               InkWell(

                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ChangeMobileOperatoeScreen(),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.settings_input_antenna,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Change Mobile Operator",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
              const InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.restore_page,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Re-submit KYC",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
               InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TrastedMarchentScreen(),
                    ),
                  );
                },

                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.verified,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Trasted Merchants",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.6,
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "More Information",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(

                onTap: () {
                launch('https://nagad.com.bd/terms-of-use/');
                 },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.verified_user_rounded,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
              GestureDetector(
                onTap: () {
                  launch('https://nagad.com.bd/faq/');
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.mark_unread_chat_alt_sharp,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "FAQ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
              GestureDetector(
                onTap: () {
                  launch('https://nagad.com.bd/uddokta-locator/');
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.location_on_outlined,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Store Location",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
               InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AboutScreen(),
                    ),
                  );
                },

                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.chrome_reader_mode_outlined,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
              GestureDetector(
                onTap: () {
                  launch('https://www.facebook.com/MyNagad/');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.facebook,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Nagad Page",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
              GestureDetector(
                onTap: () {
                  launch('https://nagad.com.bd/');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.signal_wifi_connected_no_internet_4_outlined,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Website",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
               InkWell(
                onTap: () {
                  showCustomBottomSheet(
                    context,
                    Container(
                      height: 220,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    (Icons.message_rounded),
                                    size: 40,
                                    color: Colors.deepOrange,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Settings',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Do you really want to Sign Out?',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    'NO',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => GetStartScreen(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'YES',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10)),
                    Icon(
                      Icons.logout,
                      size: 28,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign Out",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
                thickness: 0.5,
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
