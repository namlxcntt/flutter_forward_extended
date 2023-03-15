import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_forward_extend/di/injection.dart';
import 'package:flutter_forward_extend/presentation/create/bloc/create_note_bloc.dart';
import 'package:flutter_forward_extend/presentation/home/bloc/home_bloc.dart';
import 'package:flutter_forward_extend/presentation/utils/routes/app_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
import 'presentation/utils/theme/export_theme.dart';

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale? locale = const Locale('en');
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (BuildContext context) =>
              HomeBloc(createNoteUseCase: getIt(), getListNoteUseCase: getIt()),
        ),
        BlocProvider<CreateNoteBloc>(
          create: (BuildContext context) => CreateNoteBloc(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (deviceLocale, supportLocale) {
          locale = deviceLocale;
          return null;
        },
        theme: ThemeUtils.getThemeLight(),
        darkTheme: ThemeUtils.getThemeDark(),
        supportedLocales: const <Locale>[
          Locale.fromSubtags(languageCode: 'en'),
          Locale.fromSubtags(languageCode: 'vn'),
        ],
        locale: locale,
        initialRoute: AppRoute.home.getName,
        onGenerateRoute: AppRouteExt.generateRoute,
      ),
    );
  }
}
