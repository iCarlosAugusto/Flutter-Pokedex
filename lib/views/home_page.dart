import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:study_styles_flutter/controllers/home_controller.dart';
import 'package:study_styles_flutter/repositories/post_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PostRepository postRepository = PostRepository();
  HomeController homeController = HomeController();

  @override
  void initState() {
    homeController.loadPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Observer(builder: (context) {
        final list = homeController.listPosts;
        return ListView.separated(
            itemBuilder: (context, index) {
              return Text(list[index].title);
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: list.length);
      }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(homeController.listPosts);
      }),
    );
  }
}
