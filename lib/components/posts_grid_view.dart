import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portifolio/components/selected_len.dart';
import 'package:provider/provider.dart';
import '../models/bootcamp_item.dart';
import 'bootcamp_component.dart';
import '../repositories//bootcamp_tasks.dart';

class PostsGridView extends StatefulWidget {
  const PostsGridView({Key? key}) : super(key: key);

  @override
  State<PostsGridView> createState() => _PostsGridViewState();
}

class _PostsGridViewState extends State<PostsGridView> {
  @override
  Widget build(BuildContext context) {

    final selectedLen = Provider.of<SelectedLen>(context);

    List<BootcampItem> items =
    selectedLen.len == 0 ? bootcampTasks.items_en : bootcampTasks.items_pt;

    return MasonryGridView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) =>
          BootcampComponent(items[index]),
    )
    ;
  }
}
