import 'package:flutter/material.dart';
import 'package:flutter_application/core/domain/stores/core_stores.dart';
import 'package:flutter_application/module/feed/ui/widget/drawer_nav.dart';
import 'package:flutter_application/module/feed/ui/widget/feed_widget_main.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final _coreStores = Modular.get<CoreStores>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return MaterialApp(
          theme: _coreStores.themeDataStores,
          home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Feed Page',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: const Color.fromARGB(255, 15, 128, 109),
              actions: [
                IconButton(
                  onPressed: () => Modular.to.navigate('/feed/profile'),
                  icon: const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            drawer: const NavDrawer(),
            body: const FeedBody(),
          ),
        );
      },
    );
  }
}
