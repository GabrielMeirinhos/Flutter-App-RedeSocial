import 'package:flutter/material.dart';
import 'package:flutter_application/src/feed/domain/states/feed_state.dart';
import 'package:flutter_application/src/feed/domain/stores/feed_stores.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _feedStore = Modular.get<FeedStore>();

    return Observer(
      builder: (_) {
        return Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Text(''),
              ),
              ListTile(
                title: const Text("Sair"),
                onTap: () => Modular.to.navigate('/'),
              ),
              ListTile(
                title: Text(
                  (_feedStore.themeState is WhiteState)
                      ? 'Modo Escuro'
                      : 'Modo Claro',
                ),
                onTap: () => _feedStore.changeThemeStores(),
              ),
            ],
          ),
        );
      },
    );
  }
}
