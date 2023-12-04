import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:fast_app_base/entity/post/vo_simple_product_post.dart';
import 'package:fast_app_base/screen/post_detail/provider/product_post_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostDetailScreen extends ConsumerWidget {
  final SimpleProductPost? simpleProductPost;
  final int id;

  const PostDetailScreen(this.id, {super.key, this.simpleProductPost});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productPost = ref.watch(productPostProvider(id));
    return productPost.when(
        data: (data) => _PostDetail(data.simpleProductPost),
        error: (error, trace) => '에러발생'.text.make(),
        loading: () => simpleProductPost != null
            ? _PostDetail(simpleProductPost!)
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}

class _PostDetail extends HookWidget {
  final SimpleProductPost simpleProductPost;
  final ProductPost? productPost;

  const _PostDetail(this.simpleProductPost, {super.key, this.productPost});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return Stack(
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: context.deviceHeight,
                    width: context.deviceWidth,
                    child: Stack(
                      children: [
                        PageView(
                          controller: pageController,
                          children: simpleProductPost.product.images
                              .map((url) => CachedNetworkImage(
                                    imageUrl: url,
                                    fit: BoxFit.fill,
                                  ))
                              .toList(),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SmoothPageIndicator(
                            controller: pageController,
                            count: simpleProductPost.product.images.length,
                            effect: const JumpingDotEffect(),
                            onDotClicked: (index) {},
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
        const _AppBar(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(height: 100, color: Colors.blue),
        )
      ],
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60 + context.statusBarHeight,
      child: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Nav.pop(context);
          },
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
