// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/ui/home/home_view_model.dart';

// ignore: use_key_in_widget_constructors
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
            appBar: AppBar(
              title: Text(
                "TikTok Flutter",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              actions: [
                IconButton(
                    onPressed: () {
                     model.baseModel.changeTheme();
                    },
                    icon: model.baseModel.theme == ThemeMode.light
                        ? const Icon(Icons.dark_mode)
                        : const Icon(Icons.light_mode))
              ],
            ),
            // ignore: avoid_unnecessary_containers
            body: Container(
              child: Center(
                  child: Text(
                'Hello from TikTok App',
                style: Theme.of(context).textTheme.headline6,
              )),
            )));
  }
}
