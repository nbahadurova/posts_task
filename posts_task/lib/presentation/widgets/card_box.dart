import 'package:flutter/material.dart';
import 'package:posts_task/data/models/post_model.dart';
import 'package:posts_task/utils/constants/app_paddings.dart';
import 'package:posts_task/utils/extensions/sized_box_extensions.dart';


class CardBox extends StatelessWidget {
  const CardBox({super.key, required this.post,});
  final PostResponse post;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 0.7,
              color: Colors.grey.withOpacity(0.3),
            )
          ]),
      child: Padding(
        padding: AppPaddings.h6v5,
        child: Column(
          children: [
            Row(
              children: [
                Text(post.id.toString(),style: const TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),),
                5.w,
                Expanded(child: Text(post.title)),
              ],
            ),
            Text(post.body),
          ],
        ),
      ),
    );
  }
}
