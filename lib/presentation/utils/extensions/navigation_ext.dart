import 'package:flutter/material.dart';
import 'package:flutter_forward_extend/presentation/utils/routes/app_routes.dart';

extension NavigatorX on BuildContext {
  Future<T?> navigateRoute<T extends Object?>(AppRoute appRoute,
      {Object? arguments}) {
    return Navigator.pushNamed(this, appRoute.getName,arguments:arguments );
  }

  Future<T?> navigateRouteAndRemoveStack<T extends Object?>(AppRoute appRoute) {
    return Navigator.pushNamedAndRemoveUntil(
        this, appRoute.getName, (route) => false);
  }

  void pop<T extends Object?>([ T? result ]) {
    return Navigator.pop(this,result);
  }
}