
import 'package:flutter/material.dart';

Future _displaybottomsheet(BuildContext, context ){
  return showModalBottomSheet(
      context: context,
      builder: (context)=> Container(
        height: 200,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.message_outlined,size: 35, color: Colors.deepOrange,),
            Text('Do you want to change the Language to Bangla?',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black54
              ),
            )
          ],
        ),


      )

  );
}