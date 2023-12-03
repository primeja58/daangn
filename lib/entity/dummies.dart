import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:fast_app_base/entity/product/product_status.dart';
import 'package:fast_app_base/entity/product/vo_product.dart';
import 'package:fast_app_base/entity/user/vo_address.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';

String picSum(int id) {
  return 'https://picsum.photos/id/$id/200/200';
}

final user1 = User(
  id: 1,
  nickname: '우택근',
  temperature: 36.5,
  profileUrl: picSum(1010),
);

final user2 = User(
  id: 2,
  nickname: '김주아',
  temperature: 36.5,
  profileUrl: picSum(900),
);

final user3 = User(
  id: 3,
  nickname: '우연재',
  temperature: 36.5,
  profileUrl: picSum(800),
);

final product1 = Product(
    user1,
    '아이폰15',
    800000,
    '깨끗하게 잘 쓰던 물건이예요' '잘쓰세요' '감사합니다.',
    ProductStatus.normal,
    [picSum(100), picSum(101), picSum(102)]);

final product2 = Product(user1, '의자', 800000, '강남구에서 팔아요 직거래 요망',
    ProductStatus.normal, [picSum(200), picSum(201), picSum(202)]);

final product3 = Product(user1, '책상', 800000, '직거래 필수', ProductStatus.normal,
    [picSum(300), picSum(301), picSum(302)]);

final post1 = ProductPost(
  product1.user,
  product1,
  '글의 내용입니다.',
  const Address('서울시 강남구 논현동', '논현동'),
  3,
  3,
  DateTime.now().subtract(30.minutes),
);

final post2 = ProductPost(
  product2.user,
  product2,
  '글의 내용입니다.',
  const Address('서울시 강남구 역삼동', '역삼동'),
  15,
  45,
  DateTime.now().subtract(5.minutes),
);

final post3 = ProductPost(
  product3.user,
  product3,
  '글의 내용입니다.',
  const Address('서울시 강남구 삼성동', '삼성동'),
  78,
  1,
  DateTime.now().subtract(10.minutes),
);

final postList = [
  post1,
  post2,
  post3,
  post1,
  post2,
  post3,
];
