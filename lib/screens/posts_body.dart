import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/post.dart';
import '../components/selected_len.dart';
import '../models/post_model.dart';
import '../repositories/posts.dart';

class PostsBody extends StatefulWidget {
  const PostsBody({Key? key}) : super(key: key);

  @override
  State<PostsBody> createState() => _PostsBodyState();
}

class _PostsBodyState extends State<PostsBody> {
  @override
  Widget build(BuildContext context) {
    final selectedLen = Provider.of<SelectedLen>(context);

    List<PostModel> postsToShow = selectedLen.len == 0 ? Posts.posts_en : Posts.posts_pt;

    List<Color> cores = [Color(0xcc111115), Color(0xff111111), Color(0xff205F94), Color(0xff424242)];

    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      child: Container(
        child: Column(
          children: [
            for (PostModel post in postsToShow) Post(post_model: post, cor: cores[postsToShow.indexOf(post)]),
          ],
        ),
      ),
    );
  }
}
