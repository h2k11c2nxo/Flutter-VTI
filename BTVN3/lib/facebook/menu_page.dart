import 'package:auto_route/auto_route.dart';
import 'package:first_app/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../gen/assets.gen.dart';

@RoutePage()
class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: [
        TravelBlogRoute(),
        const VoteRoute(),
        const MessageRoute(),
        const SettingRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: Colors.red,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
                  label: '',
                  icon: SvgPicture.asset(Assets.images.icMain.path)),
              BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(Assets.images.icHeart.path)),
              BottomNavigationBarItem(
                  label: '', icon: SvgPicture.asset(Assets.images.icChat.path)),
              BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(Assets.images.icSettings.path)),
            ],
          ),
        );
      },
    );
  }
}
