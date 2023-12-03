import 'package:fast_app_base/screen/notification/vo/notification_dummies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationFragment extends HookConsumerWidget {
  const NotificationFragment ({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(children:
      notificatonList.map((e) => const Placeholder()).toList(),
    );
  }
}
