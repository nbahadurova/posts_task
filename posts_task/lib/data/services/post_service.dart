import 'dart:developer';
import 'package:posts_task/data/models/post_model.dart';
import 'package:posts_task/utils/network/dio_client.dart';
import 'package:posts_task/utils/constants/endpoints.dart';



class PostService {
  Future<List<PostResponse>> getPosts() async{
    const endpoint = Endpoints.postsUrl;
     log('Endpoint: $endpoint');
    final response = await dio.get(endpoint);
    final List data = response.data;
    if (response.statusCode==200) {
      return data.map((e) => PostResponse.fromJson(e)).toList();
    } else if (response.statusCode == 404) {
      throw Exception('No data found for product');
    }
    throw Exception();
  }
}