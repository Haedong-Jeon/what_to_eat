import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:what_to_eat/domain/event/network_event/network_event.dart';
import 'package:what_to_eat/presentation/base/base_scaffold.dart';
import 'package:what_to_eat/presentation/base/no_network_error_bar.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  NetworkEvent().startListen();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Column(
            children: [
              const NoNetworkErrorBar(),
              Expanded(
                child: GetMaterialApp(
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale('en'), //영어
                    Locale('ko'), //한국어
                  ],
                  builder: (context, child) => MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      //사용자가 기기 환경설정에서 텍스트 사이즈를 바꿔도 이 앱의 텍스트 크기는 영향 받지 않도록 설정
                      textScaleFactor: 1.0,
                    ),
                    child: child!,
                  ),
                  home: LoaderOverlay(
                    child: BaseScaffold(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
