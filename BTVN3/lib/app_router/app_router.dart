import 'package:auto_route/auto_route.dart';
import 'package:first_app/facebook/menu_page.dart';
import 'package:flutter/cupertino.dart';

import '../facebook/detail_travel.dart';
import '../facebook/message_page.dart';
import '../facebook/setting_page.dart';
import '../facebook/travel_blog_page.dart';
import '../facebook/vote_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: MenuRoute.page,
          path: '/menu',
          children: [
            AutoRoute(page: TravelBlogRoute.page, path: 'travel'),
            AutoRoute(page: VoteRoute.page, path: 'vote'),
            AutoRoute(page: MessageRoute.page, path: 'message'),
            AutoRoute(page: SettingRoute.page, path: 'setting'),
          ],
        ),
        AutoRoute(
          page: DetailTravelRoute.page,
          path: '/detail',
        )
      ];
}
