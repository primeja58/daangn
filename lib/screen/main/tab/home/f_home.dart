
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../fab/w_floating_daangn_button.reverpod.dart';


class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({super.key});

  @override
  ConsumerState<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  final scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      final isSmall = ref.read(floatingButtonIsSmallProvider);

      if (scrollController.position.pixels > 100 && !isSmall) {
        ref.read(floatingButtonIsSmallProvider.notifier).state = true;
      } else if (scrollController.position.pixels < 100 && isSmall) {
        ref.read(floatingButtonIsSmallProvider.notifier).state =false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        Container(height: 500,color: Colors.orange,),
        Container(height: 500,color: Colors.blue,),
        Container(height: 500,color: Colors.red,),
        Container(height: 500,color: Colors.black45,),
      ],
    );
  }
}
