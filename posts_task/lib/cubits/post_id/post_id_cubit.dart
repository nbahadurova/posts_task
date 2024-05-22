import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:posts_task/data/models/post_model.dart';
import 'package:posts_task/cubits/posts/posts_cubit.dart';
import 'package:posts_task/data/services/post_service.dart';
import 'package:posts_task/data/services/post_id_service.dart';

part 'post_id_state.dart';

class PostIdCubit extends Cubit<PostIdState> {
  PostIdCubit(this._postIdService) : super(PostIdInitial());
  final PostIdService _postIdService;
    List<PostResponse> postsById = [];
    PostResponse? postss;
   void getPostsById() async{
    try {
      emit(PostIdLoading());
      postsById = await _postIdService.getPostsById(postss!.id);
    } catch (e) {
      print(e); 
    }
  }
  
}
