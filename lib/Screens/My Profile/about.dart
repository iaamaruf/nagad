import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = "AboutScreen";
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 70,
              ),
              const Text(
                'About',
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
        elevation: 2,
      ),
      body:  Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 195,
                width: 280,
                child: Image.asset(
                  AppImage.getPath("nagadLogoWine"),
                  fit: BoxFit.fill,
                )
            ),
            SizedBox(height: 40,),
            Text(
              'Nagad is a Bangladeshi Digital Large Financial Service, '
                  'operating under the authority of Bangladesh Post Office, '
                  'an attached department of the Ministry of Post and ',
              style: TextStyle(
                  fontSize: 16, color: Colors.black54,
                  fontWeight: FontWeight.w400),
            ),
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Text(
                'Technology  Solution Provider Kona Software Lab Limited ',
                style: TextStyle(
                    fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
            const Text(
              'Nagad is a Bangladeshi Digital Large Financial Service, '
                  'operating under the authority of Bangladesh Post Office',
              style: TextStyle(
                  fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w400),
            ),

          ],
        ),
      ),
    );
  }
}
