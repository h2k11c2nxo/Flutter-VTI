// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MenuRoute.name: (routeData) {
      final args =
          routeData.argsAs<MenuRouteArgs>(orElse: () => const MenuRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MenuPage(key: args.key),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingPage(),
      );
    },
    MessageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MessagePage(),
      );
    },
    TravelBlogRoute.name: (routeData) {
      final args = routeData.argsAs<TravelBlogRouteArgs>(
          orElse: () => const TravelBlogRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TravelBlogPage(key: args.key),
      );
    },
    DetailTravelRoute.name: (routeData) {
      final args = routeData.argsAs<DetailTravelRouteArgs>(
          orElse: () => const DetailTravelRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailTravelPage(key: args.key),
      );
    },
    VoteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VotePage(),
      );
    },
  };
}

/// generated route for
/// [MenuPage]
class MenuRoute extends PageRouteInfo<MenuRouteArgs> {
  MenuRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MenuRoute.name,
          args: MenuRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const PageInfo<MenuRouteArgs> page = PageInfo<MenuRouteArgs>(name);
}

class MenuRouteArgs {
  const MenuRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MenuRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MessagePage]
class MessageRoute extends PageRouteInfo<void> {
  const MessageRoute({List<PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TravelBlogPage]
class TravelBlogRoute extends PageRouteInfo<TravelBlogRouteArgs> {
  TravelBlogRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          TravelBlogRoute.name,
          args: TravelBlogRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TravelBlogRoute';

  static const PageInfo<TravelBlogRouteArgs> page =
      PageInfo<TravelBlogRouteArgs>(name);
}

class TravelBlogRouteArgs {
  const TravelBlogRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'TravelBlogRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DetailTravelPage]
class DetailTravelRoute extends PageRouteInfo<DetailTravelRouteArgs> {
  DetailTravelRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DetailTravelRoute.name,
          args: DetailTravelRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'DetailTravelRoute';

  static const PageInfo<DetailTravelRouteArgs> page =
      PageInfo<DetailTravelRouteArgs>(name);
}

class DetailTravelRouteArgs {
  const DetailTravelRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'DetailTravelRouteArgs{key: $key}';
  }
}

/// generated route for
/// [VotePage]
class VoteRoute extends PageRouteInfo<void> {
  const VoteRoute({List<PageRouteInfo>? children})
      : super(
          VoteRoute.name,
          initialChildren: children,
        );

  static const String name = 'VoteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
