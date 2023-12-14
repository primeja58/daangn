import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.reverpod.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/src/consumer.dart';

import '../../app.dart';

class FcmManager {
  static void requestPermission() {
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

  static void initialize(WidgetRef ref) async {
    FirebaseMessaging.onMessage.listen((message) async {
      final title = message.notification?.title;
      if (title == null) {
        return;
      }
      ref.read(floatingButtonStateProvider.notifier).hideButton();
      App.navigatorKey.currentContext?.showSnackbar(title,
          extraButton: Tap(onTap: () {
            App.navigatorKey.currentContext!.go(message.data['deeplink']);
          }, child: '열기'.text.bold.make().p(20)));
      await sleepAsync(4.seconds);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      App.navigatorKey.currentContext!.go(message.data['deeplink']);
    });

    final token = await FirebaseMessaging.instance.getToken();
    print(token);
  }
}
