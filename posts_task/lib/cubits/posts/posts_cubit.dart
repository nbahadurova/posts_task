import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:posts_task/data/models/post_model.dart';
import 'package:posts_task/data/services/post_service.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit(this._postService) : super(PostsInitial());
  final PostService _postService;
  List<PostResponse> posts = [];
  void getPosts() async {
    try {
      emit(PostsLoading());
      posts = await _postService.getPosts();
      emit(PostsSuccess(response: posts));
    } on SocketException {
      emit(PostsNetworkError(message: 'No internet'));
    } catch (e) {
      emit(PostsFailure(message: 'Error occured'));
    }
  }
 
}
