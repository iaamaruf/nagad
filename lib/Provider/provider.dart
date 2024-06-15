
import 'package:nagaad/Common/Model/notification_model.dart';
import 'package:flutter/material.dart';

class CommonProvider extends ChangeNotifier{

  List<notification_model> user_notifications = [];

  ///Enrollment FeedBack
  void setEnrollmentCheckList(List<notification_model> enrollmentChecklistModel){
    user_notifications =  enrollmentChecklistModel;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      notifyListeners();
    });
  }
  List<notification_model>? getEnrollmentCheckList(){
    return user_notifications;
  }
  //singleton
  static final _currentUser = CommonProvider._internal();
  factory CommonProvider(){
    return _currentUser;
  }
  CommonProvider._internal();


}