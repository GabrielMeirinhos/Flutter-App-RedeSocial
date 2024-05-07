import 'package:flutter/material.dart';
import 'package:flutter_application/src/feed/domain/states/feed_state.dart';
import 'package:flutter_application/src/feed/domain/stores/feed_stores.dart';
import 'package:flutter_application/src/feed/ui/widget/drawer_nav.dart';
import 'package:flutter_application/src/feed/ui/widget/feed_widget_main.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final _feedStore = Modular.get<FeedStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
          theme: setThemeData(),
          home: Scaffold(
              appBar: AppBar(
                title: const Text('Feed Page'),
              ),
              drawer: const NavDrawer(),
              body: const FeedBody()));
    });
  }

  ThemeData setThemeData() {
    if (_feedStore.themeState is DarkState) {
      return ThemeData.dark();
    } else {
      return ThemeData.light();
    }
  }
}
