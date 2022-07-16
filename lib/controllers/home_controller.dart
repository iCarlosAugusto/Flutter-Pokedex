import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import 'package:study_styles_flutter/models/posts_model.dart';

import '../repositories/post_repository.dart';

class HomeController {
  final PostRepository _postRepository = PostRepository();

  @observable
  ObservableList<Post> listPosts = ObservableList<Post>();

  @action
  loadPost() async {
    var posts = await _postRepository.getAllPosts();
    posts.forEach((element) {
      listPosts.add(element);
    });

  }
}
