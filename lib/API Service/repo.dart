import 'dart:convert';
import 'package:nagaad/API%20Service/api_constant.dart';
import 'package:nagaad/API%20Service/api_response.dart';
import 'package:nagaad/Common/Model/notification_model.dart';
import 'package:nagaad/Common/data_connection_check.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<APIResponse<List<notification_model>>> enrolmentTransportListApi() async{
    ///internet check
    if(!await isInternetConnected()){
      return APIResponse<List<notification_model>>(error: true, errorMessage: "Internet is not connected!");
    }
    Uri url = Uri.parse('${baseUrlApi()}');
    return http.get(url,).then((data) async {
      print(data.body);
      final responseData = utf8.decode(data.bodyBytes);
      final jsonData = json.decode(responseData);
      if(data.statusCode == 200){
        List<notification_model> Notification = [];
        for(int i=0; i<jsonData.length; i++) {
          notification_model visaData = notification_model.fromJson(jsonData[i]);
          Notification.add(visaData);
        }
        return APIResponse<List<notification_model>>(data: Notification);
      }
      return APIResponse<List<notification_model>>(error: true, errorMessage: jsonData["message"]??"Invalid Authentication");
    }).catchError((onError){
      print(onError);
      return APIResponse<List<notification_model>>(error: true, errorMessage: "An Error Occurred");
    });
  }

}