import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/data/network/result/api_error.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/notification/vo/notification_dummies.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

import '../../entity/post/vo_product_post.dart';
import '../simple_result.dart';

class DaangnApi {
  static Future<
      SimpleResult<List<DaagnNotification>, ApiError>> getNotification() async {
    await sleepAsync(500.ms);
    return SimpleResult.success(notificatonList);
  }
}
