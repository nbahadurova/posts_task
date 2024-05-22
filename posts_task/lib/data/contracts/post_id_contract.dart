import 'package:posts_task/data/models/post_model.dart';

abstract class PostIdContract {
  Future<List<PostResponse>> getPostsById(int id);

}