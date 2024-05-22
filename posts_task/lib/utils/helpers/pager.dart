import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_task/utils/di/locator.dart';
import 'package:posts_task/cubits/posts/posts_cubit.dart';
import 'package:posts_task/cubits/post_id/post_id_cubit.dart';
import 'package:posts_task/presentation/pages/home/home_page.dart';
import 'package:posts_task/presentation/pages/posts/post_detail_page.dart';

class Pager {
  Pager._();
  static Widget get home => const HomePage();
  static Widget get posts => const PostDetailPage();
}
