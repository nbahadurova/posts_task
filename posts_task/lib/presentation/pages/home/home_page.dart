import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_task/utils/helpers/pager.dart';
import 'package:posts_task/cubits/posts/posts_cubit.dart';
import 'package:posts_task/utils/constants/app_paddings.dart';
import 'package:posts_task/presentation/widgets/card_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PostsCubit>();
    // final posts = cubit.getPosts();
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider.value(
                      value: cubit,
                      child: Pager.posts,
                    ),
                  ));
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Padding(
        padding: AppPaddings.h15,
        child: BlocBuilder<PostsCubit, PostsState>(
          builder: (context, state) {
            if (state is PostsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is PostsNetworkError) {
              return const Text('Network error');
            } else if (state is PostsSuccess) {
              final post = state.response;
              return ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 17,
                ),
                itemCount: post.length,
                itemBuilder: (context, index) {
                  final posts = post[index];
                  return GestureDetector(
                    onTap: () {
                      log('$index');
                      context.read<PostsCubit>().addPost(posts.id);
                    },
                    child: CardBox(
                      post: posts,
                    ),
                  );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
