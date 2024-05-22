import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_task/cubits/posts/posts_cubit.dart';
import 'package:posts_task/utils/constants/app_paddings.dart';
import 'package:posts_task/presentation/widgets/card_box.dart';

class AddedPostsPage extends StatelessWidget {
  const AddedPostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PostsCubit>();
    final post = cubit.addedPosts;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: AppPaddings.h15,
        child: BlocBuilder<PostsCubit, PostsState>(
          builder: (context, state) {
            if (post.isEmpty) {
              return const Center(child: Text('No posts'));
            }
            return ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(
                height: 17,
              ),
              itemCount: post.length,
              itemBuilder: (context, index) {
                return CardBox(
                  post: post[index],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
