import 'package:flutter/material.dart';
import 'package:flutter_application/module/feed/ui/states/feed_state.dart';
import 'package:flutter_application/module/feed/ui/stores/feed_stores.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedBody extends StatefulWidget {
  const FeedBody({super.key});

  @override
  State<FeedBody> createState() => _FeedBodyState();
}

class _FeedBodyState extends State<FeedBody> {
  final _feedStore = Modular.get<FeedStore>();

  @override
  void initState() {
    super.initState();
    _feedStore.getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (_feedStore.feedState is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (_feedStore.feedState is FeedStateErro) {
          return const Center(
            child: Text('Erro de carregamento'),
          );
        } else if (_feedStore.feedState is EmptyState) {
          return const Center(
            child: Text('Lista vazia'),
          );
        } else {
          return ListView.builder(
            itemCount: _feedStore.listPost.length,
            itemBuilder: (context, index) {
              final itemPost = _feedStore.listPost[index];
              return Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: 375,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(31, 136, 136, 136),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Nome $index',
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                itemPost.title,
                                style: DefaultTextStyle.of(context)
                                    .style
                                    .apply(fontSizeFactor: 1.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 325,
                        height: 325,
                        child: Image.network(
                          itemPost.url,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
