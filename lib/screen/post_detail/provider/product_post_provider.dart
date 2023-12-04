import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/network/daangn_api.dart';

final productPostProvider =
    AutoDisposeFutureProviderFamily<ProductPost, int>((ref, id) async {
  return await DaangnApi.getPost(id);
});
