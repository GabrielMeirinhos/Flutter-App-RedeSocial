import 'package:flutter/material.dart';
import 'package:flutter_application/core/domain/stores/core_stores.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  final _coreStores = Modular.get<CoreStores>();
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _coreStores.themeDataStores,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 15, 128, 109),
          title: const Text(
            'Profile Page',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () => Modular.to.navigate('/feed'),
              icon: const Icon(Icons.home),
              color: Colors.white,
            )
          ],
        ),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 15, 128, 109),
          child: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.account_circle), text: 'Perfil'),
              Tab(icon: Icon(Icons.search), text: 'Buscar'),
              Tab(icon: Icon(Icons.add_box), text: 'Adicionar Foto'),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
            Container(
              child: const Text('Buscar'),
            ),
            Container(
              child: const Text('Adicionar foto'),
            ),
          ],
        ),
      ),
    );
  }
}
