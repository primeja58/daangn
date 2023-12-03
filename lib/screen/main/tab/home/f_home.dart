
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
      final floatingState = ref.read(floatingButtonStateProvider);

      if (scrollController.position.pixels > 100 && !floatingState.isSmall) {
        ref.read(floatingButtonStateProvider.notifier).changeButtonSize(true);
      } else if (scrollController.position.pixels < 100 && floatingState.isSmall) {
        ref.read(floatingButtonStateProvider.notifier).changeButtonSize(false);
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
