import 'package:firebase_messaging/firebase_messaging.dart';

class FcmManager{
  static void requestPermission(){
    FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }
  static void initialize()async{
    final token = await FirebaseMessaging.instance.getToken();
    print(token);
  }
}