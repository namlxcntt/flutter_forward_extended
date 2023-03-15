import 'package:flutter/cupertino.dart';
import 'package:flutter_forward_extend/presentation/create/create_note_page.dart';
import 'package:flutter_forward_extend/presentation/home/home_page.dart';

/// Define Routes
enum AppRoute {
  home,
  createNote
}

extension AppRouteExt on AppRoute {
  String get getName {
    return "/$name";
  }

  static AppRoute? from(String? name) {
    for (final item in AppRoute.values) {
      if (item.getName == name) {
        return item;
      }
    }
    return null;
  }

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (AppRouteExt.from(settings.name)) {
      case AppRoute.home:
        return CupertinoPageRoute(
            builder: (_) =>  const HomePage(), settings: settings);
      case AppRoute.createNote:
        return CupertinoPageRoute(
            builder: (_) =>  const CreateNotePage(), settings: settings);
      default:
        return null;
    }
  }
}
