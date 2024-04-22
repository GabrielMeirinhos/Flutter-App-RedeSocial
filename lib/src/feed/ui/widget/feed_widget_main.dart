import 'package:flutter/material.dart';
import 'package:flutter_application/src/feed/domain/states/feed_state.dart';
import 'package:flutter_application/src/feed/domain/stores/feed_stores.dart';
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
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    width: double.infinity,
                    height: 300,
                    child: Image.network(
                      itemPost.url,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                ],
              );
            },
          );
        }
      },
    );
  }
}
