// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:flutter_modular/flutter_modular.dart';

// class FeedPage extends StatefulWidget {
//   const FeedPage({super.key});

//   @override
//   State<FeedPage> createState() => _FeedPageState();
// }

// class _FeedPageState extends State<FeedPage> {
//   final PostStore _postStore =
//       PostStore(repository: PostRepository(client: DioClient()));
//   //TODO: Fazer implementação por injeção do moduleAPP 
//   @override
//   void initState() {
//     super.initState();
//     _postStore.getPost();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Feed Page'),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Modular.to.navigate('/'),
//         ),
//       ),
//       body: Observer(
//         builder: (_) {
//           if (_postStore.isLoading) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (_postStore.erro.isNotEmpty) {
//             return Center(
//               child: Text(_postStore.erro),
//             );
//           } else {
//             return ListView.builder(
//               itemCount: _postStore.state.length,
//               itemBuilder: (context, index) {
//                 final itemPost = _postStore.state[index];
//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                           Text(
//                             'Nome $index',
//                           ),
//                           const SizedBox(width: 8),
//                           Expanded(
//                             child: Text(
//                               itemPost.title,
//                               style: DefaultTextStyle.of(context)
//                                   .style
//                                   .apply(fontSizeFactor: 1.4),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 300,
//                       child: Image.network(
//                         itemPost.url,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     const Divider(),
//                   ],
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
