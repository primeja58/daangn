import 'notification_type.dart';

class DaagnNotification {
  final NotificationType type;
  final String title;
  final String description;
  final DateTime time;
  bool isRead;

  DaagnNotification(
    this.type,
    this.title,
    this.description,
    this.time, {
    this.isRead = false,
  });
}
