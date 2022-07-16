import '../models/posts_model.dart';
import 'package:dio/dio.dart';

class PostRepository {
  
  Future<List<Post>> getAllPosts() async {
    List<Post> listPost = [];

    var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    List posts = response.data;

    posts.forEach((element) {
      listPost.add(Post.fromJson(element));
    });

    return listPost;
  }
}
