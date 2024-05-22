
class Endpoints {
  Endpoints._();

  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';
  static const String postsUrl = '$_baseUrl/posts';
  static String postId(int id) => '$postsUrl/$id';
}