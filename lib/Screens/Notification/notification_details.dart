import 'package:flutter/material.dart';

class NotificationDetailsScreen extends StatefulWidget {
  static const String routeName = "NotificationDetailsScreen";
  const NotificationDetailsScreen({super.key});

  @override
  State<NotificationDetailsScreen> createState() => _NotificationDetailsScreenState();
}

class _NotificationDetailsScreenState extends State<NotificationDetailsScreen> {
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
                'Notification Detail',
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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '  ৳৫২০ গ্রামীণফোন রিচার্জে  ৳৪০ ক্যাশব্যাক',
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('🕒 রাত ৯টা পর্যন্ত , নগদ থেকে গ্রামীণফোন এ\n'
                '➡️৳৫২০ রিচার্জে 💸৳৪০ ক্যাশব্যাক। '
                ' \n⌛অফার চলাকালে সর্বোচ্চ ৫ বার\n🗓️শুধু ২৩ ফেব্রুয়ারি২০২৪ এর জন্য  ', style: TextStyle(
                fontSize: 15,
                color: Colors.black),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('আরো জানতে কল 📞 ১৬১৬৭', style: TextStyle(
                fontSize: 15,
                color: Colors.black),),
          ),
        ],

      ),
    );
  }
}
