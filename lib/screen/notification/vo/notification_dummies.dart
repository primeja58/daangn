// ignore_for_file: non_constant_identifier_names

import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notification1 = DaagnNotification(
  NotificationType.official,
  '💖8월 가계부가 도착했어요!',
  '#당근 #당근가계부 #자원재순환 #따뜻한거래',
  DateTime.now().subtract(3.hours),
);

final notification2 = DaagnNotification(
  NotificationType.legal,
  '당근페이 전자금융거래 이용약관 개정안내',
  '개정안내 확인하기',
  DateTime.now().subtract(2.minutes),
);

final notification3 = DaagnNotification(
  NotificationType.local,
  '지금 새로워진 \'당근\'을 만나세요 🥕🥕',
  '당근마켓의 새 이름 새로고를 소개합니다.',
  DateTime.now().subtract(4.days),
);

final notification4 = DaagnNotification(
  NotificationType.official,
  '가족집수리',
  '마음에 드셨다면 다른 이웃을 위해 후기를 남겨주세요!',
  DateTime.now().subtract(7.days),
);

final notificatonList = [
  notification1,
  notification2,
  notification3,
  notification4,
];