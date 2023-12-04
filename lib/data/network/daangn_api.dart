import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/data/network/result/api_error.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:fast_app_base/screen/notification/vo/notification_dummies.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

import '../simple_result.dart';

class DaangnApi {
  static Future<SimpleResult<List<DaagnNotification>, ApiError>>
      getNotification() async {
    await sleepAsync(500.ms);
    return SimpleResult.success(notificatonList);
  }

  static Future<ProductPost> getPost(int id) async {
    await sleepAsync(500.ms);
    return ProductPost(
        simpleProductPost: post1,
        content: '깨끗하게 잘 썼던 물건입니다.'
            '잘쓰면 좋겠습니다.'
            '감사합니다.');
  }
}
