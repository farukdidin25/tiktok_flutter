// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/app_base_view_model.dart';
import 'package:tiktok_flutter/constants/theme.dart';

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppBaseViewMode>.reactive(
      viewModelBuilder: () => AppBaseViewMode(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeConst.light,
        darkTheme: ThemeConst.dark,
        themeMode: model.theme,
        home: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      model.changeTheme();
                    },
                    icon: model.theme == ThemeMode.light
                        ? const Icon(Icons.dark_mode)
                        : const Icon(Icons.light_mode))
              ],
            ),
            body: Container(
              child: Center(
                  child: Text(
                'Hello from TikTok App',
                style: Theme.of(context).textTheme.headline6,
              )),
            )),
      ),
    );
  }
}
