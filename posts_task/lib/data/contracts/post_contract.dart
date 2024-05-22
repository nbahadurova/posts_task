import 'package:posts_task/data/models/post_model.dart';

abstract class PostContract {
  Future<List<PostResponse>> getPosts();

}