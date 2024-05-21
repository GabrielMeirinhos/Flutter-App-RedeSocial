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
            ),
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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyHz2RUIU6oEK1rS35kij_syV8BCleaJ2tZEcuCv75oA&s'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Nome do Usuário',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  GridView.builder(
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 9, // Número de imagens per perfil TODO:
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      // while(/*TODO: StateListFotosPorPerfil*/ )
                      return Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyHz2RUIU6oEK1rS35kij_syV8BCleaJ2tZEcuCv75oA&s',
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ],
              ),
            ),
            const Center(
              child: Text('Buscar'),
            ),
            const Center(
              child: Text('Adicionar foto'),
            ),
          ],
        ),
      ),
    );
  }
}
