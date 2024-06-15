import 'package:flutter/material.dart';
import 'package:nagaad/API%20Service/repo.dart';
import 'package:nagaad/Screens/Notification/notification_details.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
              SizedBox(width: 90,),
              const Text(
                'Notifications',
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
      body: FutureBuilder(
        future: ApiServices.enrolmentTransportListApi(),
        builder: (context, snapshot) {
          if ( snapshot.connectionState== ConnectionState.waiting )
          {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if ( snapshot.hasError )
          {
            return Center(
              child: Text( "Error"),
            );
          }
          final data= snapshot.data?.data??[];

          return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index)
              {
                return Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8.0, top: 5),
                  child: Card(
                    elevation: 3,
                    color: Colors.grey.shade100,
                    child: ListTile(
                      title: Text(data[index].title??'No Title', maxLines: 2,
                          style: TextStyle(fontSize: 18, color: Colors.black)
                      ),
                      subtitle: Text(data[index].body??'No Data', maxLines: 4),
                      leading: Text( data[index].id.toString(), style:
                        TextStyle(fontSize: 20, color: Colors.deepOrange),)
                    ),
                  ),
                );
              }
              );


          // return SingleChildScrollView(
          //
          //   child: Column(
          //     children: [
          //       SizedBox(height: 8,),
          //       InkWell(
          //         onTap: () {
          //           Navigator.of(context).pushNamed(NotificationDetailsScreen.routeName);
          //         },
          //
          //
          //         child: Card(
          //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
          //           color: Colors.white,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: EdgeInsets.all(10),
          //                 child: Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: BoxDecoration(
          //                     color: Colors.deepOrange,
          //                     borderRadius: BorderRadius.circular(50),
          //                   ),
          //                   child: Icon(Icons.notifications_active, size: 30,color: Colors.white,),
          //                 ),
          //               ),
          //               Container(
          //                 margin: EdgeInsets.only(left: 12),
          //                 child: const Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     SizedBox(height: 5,),
          //                     Row(
          //                       children: [
          //                         Text('৳৫২০ গ্রামীণফোন রিচা...', style: TextStyle(
          //                             fontSize: 16,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //
          //                         Text('Today, 06:35PM', style: TextStyle(
          //                             fontSize: 14,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //                       ],
          //                     ),
          //                     SizedBox(height: 5,),
          //
          //                     Text('🕒 রাত ৯টা পর্যন্ত , নগদ থেকে গ্রামীণ ফোন এ\n৳৫২০'
          //                         'রিচার্জে 💸৳৪০ ক্যাশব্যাক। অফার\nচলাকালে সর্বোচ্চ ৫ বার'
          //                         ' 🗓️শুধু ২৩ ফেব্রুয়ারি\n২০২৪ এর জন্য ', style: TextStyle(
          //                         fontSize: 14,
          //                         color: Colors.black38),),
          //
          //
          //
          //                   ],
          //
          //
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () {
          //           Navigator.of(context).pushNamed(NotificationDetailsScreen.routeName);
          //         },
          //
          //
          //         child: Card(
          //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
          //           color: Colors.white,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: EdgeInsets.all(10),
          //                 child: Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: BoxDecoration(
          //                     color: Colors.deepOrange,
          //                     borderRadius: BorderRadius.circular(50),
          //                   ),
          //                   child: Icon(Icons.notifications_active, size: 30,color: Colors.white,),
          //                 ),
          //               ),
          //               Container(
          //                 margin: EdgeInsets.only(left: 12),
          //                 child: const Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     SizedBox(height: 5,),
          //                     Row(
          //                       children: [
          //                         Text('৳৫২০ গ্রামীণফোন রিচা...', style: TextStyle(
          //                             fontSize: 16,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //
          //                         Text('Today, 06:35PM', style: TextStyle(
          //                             fontSize: 14,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //                       ],
          //                     ),
          //                     SizedBox(height: 5,),
          //
          //                     Text('🕒 রাত ৯টা পর্যন্ত , নগদ থেকে গ্রামীণ ফোন এ\n৳৫২০'
          //                         'রিচার্জে 💸৳৪০ ক্যাশব্যাক। অফার\nচলাকালে সর্বোচ্চ ৫ বার'
          //                         ' 🗓️শুধু ২৩ ফেব্রুয়ারি\n২০২৪ এর জন্য ', style: TextStyle(
          //                         fontSize: 14,
          //                         color: Colors.black38),),
          //
          //
          //
          //                   ],
          //
          //
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () {
          //           Navigator.of(context).pushNamed(NotificationDetailsScreen.routeName);
          //         },
          //
          //
          //         child: Card(
          //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
          //           color: Colors.white,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: EdgeInsets.all(10),
          //                 child: Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: BoxDecoration(
          //                     color: Colors.deepOrange,
          //                     borderRadius: BorderRadius.circular(50),
          //                   ),
          //                   child: Icon(Icons.notifications_active, size: 30,color: Colors.white,),
          //                 ),
          //               ),
          //               Container(
          //                 margin: EdgeInsets.only(left: 12),
          //                 child: const Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     SizedBox(height: 5,),
          //                     Row(
          //                       children: [
          //                         Text('৳৫২০ গ্রামীণফোন রিচা...', style: TextStyle(
          //                             fontSize: 16,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //
          //                         Text('Today, 06:35PM', style: TextStyle(
          //                             fontSize: 14,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //                       ],
          //                     ),
          //                     SizedBox(height: 5,),
          //
          //                     Text('🕒 রাত ৯টা পর্যন্ত , নগদ থেকে গ্রামীণ ফোন এ\n৳৫২০'
          //                         'রিচার্জে 💸৳৪০ ক্যাশব্যাক। অফার\nচলাকালে সর্বোচ্চ ৫ বার'
          //                         ' 🗓️শুধু ২৩ ফেব্রুয়ারি\n২০২৪ এর জন্য ', style: TextStyle(
          //                         fontSize: 14,
          //                         color: Colors.black38),),
          //
          //
          //
          //                   ],
          //
          //
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () {
          //           Navigator.of(context).pushNamed(NotificationDetailsScreen.routeName);
          //         },
          //
          //
          //         child: Card(
          //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
          //           color: Colors.white,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: EdgeInsets.all(10),
          //                 child: Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: BoxDecoration(
          //                     color: Colors.deepOrange,
          //                     borderRadius: BorderRadius.circular(50),
          //                   ),
          //                   child: Icon(Icons.notifications_active, size: 30,color: Colors.white,),
          //                 ),
          //               ),
          //               Container(
          //                 margin: EdgeInsets.only(left: 12),
          //                 child: const Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     SizedBox(height: 5,),
          //                     Row(
          //                       children: [
          //                         Text('৳৫২০ গ্রামীণফোন রিচা...', style: TextStyle(
          //                             fontSize: 16,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //
          //                         Text('Today, 06:35PM', style: TextStyle(
          //                             fontSize: 14,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //                       ],
          //                     ),
          //                     SizedBox(height: 5,),
          //
          //                     Text('🕒 রাত ৯টা পর্যন্ত , নগদ থেকে গ্রামীণ ফোন এ\n৳৫২০'
          //                         'রিচার্জে 💸৳৪০ ক্যাশব্যাক। অফার\nচলাকালে সর্বোচ্চ ৫ বার'
          //                         ' 🗓️শুধু ২৩ ফেব্রুয়ারি\n২০২৪ এর জন্য ', style: TextStyle(
          //                         fontSize: 14,
          //                         color: Colors.black38),),
          //
          //
          //
          //                   ],
          //
          //
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () {
          //           Navigator.of(context).pushNamed(NotificationDetailsScreen.routeName);
          //         },
          //
          //
          //         child: Card(
          //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
          //           color: Colors.white,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: EdgeInsets.all(10),
          //                 child: Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: BoxDecoration(
          //                     color: Colors.deepOrange,
          //                     borderRadius: BorderRadius.circular(50),
          //                   ),
          //                   child: Icon(Icons.notifications_active, size: 30,color: Colors.white,),
          //                 ),
          //               ),
          //               Container(
          //                 margin: EdgeInsets.only(left: 12),
          //                 child: const Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     SizedBox(height: 5,),
          //                     Row(
          //                       children: [
          //                         Text('৳৫২০ গ্রামীণফোন রিচা...', style: TextStyle(
          //                             fontSize: 16,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //
          //                         Text('Today, 06:35PM', style: TextStyle(
          //                             fontSize: 14,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //                       ],
          //                     ),
          //                     SizedBox(height: 5,),
          //
          //                     Text('🕒 রাত ৯টা পর্যন্ত , নগদ থেকে গ্রামীণ ফোন এ\n৳৫২০'
          //                         'রিচার্জে 💸৳৪০ ক্যাশব্যাক। অফার\nচলাকালে সর্বোচ্চ ৫ বার'
          //                         ' 🗓️শুধু ২৩ ফেব্রুয়ারি\n২০২৪ এর জন্য ', style: TextStyle(
          //                         fontSize: 14,
          //                         color: Colors.black38),),
          //
          //
          //
          //                   ],
          //
          //
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () {
          //           Navigator.of(context).pushNamed(NotificationDetailsScreen.routeName);
          //         },
          //
          //
          //         child: Card(
          //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
          //           color: Colors.white,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: EdgeInsets.all(10),
          //                 child: Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: BoxDecoration(
          //                     color: Colors.deepOrange,
          //                     borderRadius: BorderRadius.circular(50),
          //                   ),
          //                   child: Icon(Icons.notifications_active, size: 30,color: Colors.white,),
          //                 ),
          //               ),
          //               Container(
          //                 margin: EdgeInsets.only(left: 12),
          //                 child: const Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     SizedBox(height: 5,),
          //                     Row(
          //                       children: [
          //                         Text('৳৫২০ গ্রামীণফোন রিচা...', style: TextStyle(
          //                             fontSize: 16,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //
          //                         Text('Today, 06:35PM', style: TextStyle(
          //                             fontSize: 14,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //                       ],
          //                     ),
          //                     SizedBox(height: 5,),
          //
          //                     Text('🕒 রাত ৯টা পর্যন্ত , নগদ থেকে গ্রামীণ ফোন এ\n৳৫২০'
          //                         'রিচার্জে 💸৳৪০ ক্যাশব্যাক। অফার\nচলাকালে সর্বোচ্চ ৫ বার'
          //                         ' 🗓️শুধু ২৩ ফেব্রুয়ারি\n২০২৪ এর জন্য ', style: TextStyle(
          //                         fontSize: 14,
          //                         color: Colors.black38),),
          //
          //
          //
          //                   ],
          //
          //
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () {
          //           Navigator.of(context).pushNamed(NotificationDetailsScreen.routeName);
          //         },
          //
          //
          //         child: Card(
          //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
          //           color: Colors.white,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: EdgeInsets.all(10),
          //                 child: Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: BoxDecoration(
          //                     color: Colors.deepOrange,
          //                     borderRadius: BorderRadius.circular(50),
          //                   ),
          //                   child: Icon(Icons.notifications_active, size: 30,color: Colors.white,),
          //                 ),
          //               ),
          //               Container(
          //                 margin: EdgeInsets.only(left: 12),
          //                 child: const Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     SizedBox(height: 5,),
          //                     Row(
          //                       children: [
          //                         Text('৳৫২০ গ্রামীণফোন রিচা...', style: TextStyle(
          //                             fontSize: 16,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //
          //                         Text('Today, 06:35PM', style: TextStyle(
          //                             fontSize: 14,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //                       ],
          //                     ),
          //                     SizedBox(height: 5,),
          //
          //                     Text('🕒 রাত ৯টা পর্যন্ত , নগদ থেকে গ্রামীণ ফোন এ\n৳৫২০'
          //                         'রিচার্জে 💸৳৪০ ক্যাশব্যাক। অফার\nচলাকালে সর্বোচ্চ ৫ বার'
          //                         ' 🗓️শুধু ২৩ ফেব্রুয়ারি\n২০২৪ এর জন্য ', style: TextStyle(
          //                         fontSize: 14,
          //                         color: Colors.black38),),
          //
          //
          //
          //                   ],
          //
          //
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () {
          //           Navigator.of(context).pushNamed(NotificationDetailsScreen.routeName);
          //         },
          //
          //
          //         child: Card(
          //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
          //           color: Colors.white,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: EdgeInsets.all(10),
          //                 child: Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: BoxDecoration(
          //                     color: Colors.deepOrange,
          //                     borderRadius: BorderRadius.circular(50),
          //                   ),
          //                   child: Icon(Icons.notifications_active, size: 30,color: Colors.white,),
          //                 ),
          //               ),
          //               Container(
          //                 margin: EdgeInsets.only(left: 12),
          //                 child: const Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     SizedBox(height: 5,),
          //                     Row(
          //                       children: [
          //                         Text('৳৫২০ গ্রামীণফোন রিচা...', style: TextStyle(
          //                             fontSize: 16,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //
          //                         Text('Today, 06:35PM', style: TextStyle(
          //                             fontSize: 14,fontWeight: FontWeight.w500,
          //                             color: Colors.black),),
          //                       ],
          //                     ),
          //                     SizedBox(height: 5,),
          //
          //                     Text('🕒 রাত ৯টা পর্যন্ত , নগদ থেকে গ্রামীণ ফোন এ\n৳৫২০'
          //                         'রিচার্জে 💸৳৪০ ক্যাশব্যাক। অফার\nচলাকালে সর্বোচ্চ ৫ বার'
          //                         ' 🗓️শুধু ২৩ ফেব্রুয়ারি\n২০২৪ এর জন্য ', style: TextStyle(
          //                         fontSize: 14,
          //                         color: Colors.black38),),
          //
          //
          //
          //                   ],
          //
          //
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // );
        }
      ),
    );
  }
}
