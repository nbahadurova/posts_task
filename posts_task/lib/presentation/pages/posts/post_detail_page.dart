import 'package:flutter/material.dart';
import 'package:posts_task/data/models/post_model.dart';
import 'package:posts_task/presentation/widgets/card_box.dart';

class PostDetailPage extends StatelessWidget {

  const PostDetailPage({ super.key, required this.post });
  final PostResponse post;
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: CardBox(post: post),
       );
  }
}