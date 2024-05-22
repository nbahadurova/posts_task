import 'package:posts_task/data/models/post_model.dart';
import 'package:posts_task/data/services/post_id_service.dart';
import 'package:posts_task/data/contracts/post_id_contract.dart';


class PostIdRepository implements PostIdContract{
  PostIdRepository(this._postIdService);
  final PostIdService _postIdService;
  
  @override
  Future<List<PostResponse>> getPostsById(id) => _postIdService.getPostsById(id);
  // Future<List<PostResponse>> getPosts(int id) =>  _postIdService.getPostsById(id);
  
  
}