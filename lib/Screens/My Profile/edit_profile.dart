import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';

class EditProfileScreen extends StatefulWidget {
  static  String routeName = "EditProfileScreen";
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  // final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
              children: [
                Container(
                  width: double.infinity,
                  height:300,
                  color: Colors.deepOrange,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0, top: 10),
                        child: Image.asset(
                          AppImage.getPath(
                            "Icon",
                          ),
                          fit: BoxFit.fill,
                          color: Colors.white.withOpacity(.2),
                        ),
                      ),
                    ],
                  ),
                ),

                 Center(
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white, // Text color
                        ),
                      ),
                      SizedBox(height: 16),
                      InkWell(
                        // onTap: () {
                        //   Navigator.of(context).pop();
                        // },
                          child: Container(
                            height: 85,
                            width: 85,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade500,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 76,
                            ),
                            // child: Image.asset(
                            //   AppImage.getPath("maruf_pic"),
                            //   fit: BoxFit.fill,
                            // ),
                          )),
                      Text(
                        '01733-682541',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white, // Text color
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Virtual Card Number',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white, // Text color
                        ),
                      ),
                      Text(
                        '9856 0002 3756 9344',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white, // Text color
                        ),
                      ),
                    ],
                  ),
                ),

              ]
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 120,
            width: double.infinity,
            color: Colors.white,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                    height: 100 ,
                    child: Icon(Icons.my_library_books_rounded,
                      size: 30,
                      color: Colors.deepOrange,
                    )
                ),
                const SizedBox(width: 8,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Set Name', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 15,
                    ),),
                    Container(
                      width: 320,
                      child:  const TextField(


                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('Enter Bank/Card Name', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 14,
                    ),),



                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
