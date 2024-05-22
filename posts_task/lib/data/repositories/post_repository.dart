import 'package:posts_task/data/models/post_model.dart';
import 'package:posts_task/data/services/post_service.dart';
import 'package:posts_task/data/contracts/post_contract.dart';


class PostRepository implements PostContract{
  PostRepository(this._postService);
  final PostService _postService;
  @override
  Future<List<PostResponse>> getPosts() =>  _postService.getPosts();  
}