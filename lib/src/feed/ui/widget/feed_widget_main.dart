import 'package:flutter/material.dart';
import 'package:flutter_application/src/feed/domain/usecases/get_post.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FeedBody extends StatefulWidget {
  const FeedBody({super.key});

  @override
  State<FeedBody> createState() => _FeedBodyState();
}

class _FeedBodyState extends State<FeedBody> {
  final GetPostUseCase _postUseCase = GetPostUseCase();
  @override
  void initState() {
    super.initState();
    _postUseCase.getPostUseCase();
  }

  @override
  Widget build(BuildContext context) {
    Observer(
      builder: (_) {
        if (_postUseCase.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (_postStore.erro.isNotEmpty) {
          return Center(
            child: Text(_postStore.erro),
          );
        } else {
          return ListView.builder(
            itemCount: _postStore.state.length,
            itemBuilder: (context, index) {
              final itemPost = _postStore.state[index];
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
    throw UnimplementedError();
  }
}
