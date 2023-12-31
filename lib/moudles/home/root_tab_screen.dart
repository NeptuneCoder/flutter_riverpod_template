import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_template/gen/assets.gen.dart';

class Keys {
  static final tabKey = GlobalKey<_RootTabScreenState>();
}

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class RootTabScreen extends ConsumerStatefulWidget {
  const RootTabScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootTabScreenState();
}

class _RootTabScreenState extends ConsumerState<RootTabScreen>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late TabController _controller;

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(currentIndexProvider);
    return Scaffold(
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              const Text("home"),
              const Text("setting"),
              const Text("setting"),
              const Text("setting"),
            ]),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: const Color(0xff94A3B8),
          unselectedLabelStyle:
              const TextStyle(fontSize: 11, fontWeight: FontWeight.normal),
          selectedLabelStyle:
              const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: currentIndex == 0
                    ? Assets.icons.tabs.iconTabChatSelected.image(width: 24)
                    : Assets.icons.tabs.iconTabChatUnselected.image(width: 24),
                label: "对话"),
            BottomNavigationBarItem(
                icon: currentIndex == 1
                    ? Assets.icons.tabs.iconTabCallSelected.image(width: 24)
                    : Assets.icons.tabs.iconTabCallUnselected.image(width: 24),
                label: "呼叫"),
            BottomNavigationBarItem(
                icon: currentIndex == 2
                    ? Assets.icons.tabs.iconTabContactSelected.image(width: 24)
                    : Assets.icons.tabs.iconTabContactUnselected
                        .image(width: 24),
                label: "联系人"),
            BottomNavigationBarItem(
                icon: currentIndex == 3
                    ? Assets.icons.tabs.iconTabSettingSelected.image(width: 24)
                    : Assets.icons.tabs.iconTabSettingUnselected
                        .image(width: 24),
                label: "设置"),
          ],
          onTap: ((value) {
            scrollToTab(value);
          }),
        ));
  }

  scrollToTab(int index) {
    _controller.animateTo(index);
    ref.read(currentIndexProvider.notifier).state = index;
  }

  @override
  void initState() {
    print("3. root 当前的时间为--${DateTime.now().millisecondsSinceEpoch}");
    _controller = TabController(
        length: 4,
        vsync: this,
        animationDuration: const Duration(milliseconds: 10));
    super.initState();
  }

  @override
  void didUpdateWidget(RootTabScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
}
