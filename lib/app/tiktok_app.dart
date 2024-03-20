// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/app_base_view_model.dart';
import 'package:tiktok_flutter/constants/theme.dart';
import 'package:tiktok_flutter/di/locator.dart';
import 'package:tiktok_flutter/ui/home/home_view.dart';

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppBaseViewModel>.reactive(
      viewModelBuilder: () => locator<AppBaseViewModel>(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeConst.light,
        darkTheme: ThemeConst.dark,
        themeMode: model.theme,
        home: HomeView(),
      ),
    );
  }
}

