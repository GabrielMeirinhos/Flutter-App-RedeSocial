import 'package:flutter/material.dart';
import 'package:flutter_application/src/feed/ui/widget/feed_widget_main.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Feed Page'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Modular.to.navigate('/'),
          ),
        ),
        body: const FeedBody());
  }
}
