import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/components/AppSettings.dart';
import 'package:portifolio/components/post.dart';
import 'package:portifolio/components/show_true_or_false.dart';
import '../components/selected_len.dart';
import 'package:provider/provider.dart';

import '../screens/posts_body.dart';

class Projects extends StatefulWidget {
  const Projects({
    Key? key,
    this.scale1,
    this.scale2,
    this.widgetOpacity1,
    this.widgetOpacity2,
    this.widgetOpacity3,
    this.widgetOpacity4,
    this.padValue1,
    this.padValue2,
  }) : super(key: key);

  final scale1;
  final scale2;
  final widgetOpacity1;
  final widgetOpacity2;
  final widgetOpacity3;
  final widgetOpacity4;
  final padValue1;
  final padValue2;

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {


  bool showPostsBody = false;
  @override
  void initState() {
    if (AppSettings.isFirstBuild) {
      AppSettings.isFirstBuild = false;
      Future.delayed(const Duration(seconds: 5)).then((value) => setState(() {
        showPostsBody = true;
      }));
    }else{
      showPostsBody = true;
    }
    super.initState();;
  }


  @override
  Widget build(BuildContext context) {
    final selectedLen = Provider.of<SelectedLen>(context);
    final show = Provider.of<ShowTrueorFalse>(context);

    return Center(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Column(
            children: [
              AnimatedScale(
                scale: widget.scale1,
                duration: const Duration(seconds: 3),
                curve: Curves.ease,
                alignment: Alignment.bottomCenter,
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 3),
                  opacity: widget.widgetOpacity1,
                  child: AnimatedPadding(
                    padding: EdgeInsets.only(top: widget.padValue1),
                    curve: Curves.ease,
                    duration: const Duration(seconds: 2),
                    child: Text(
                      selectedLen.len == 0
                          ? 'Welcome to my portfolio'
                          : 'Bem vindo ao meu portfolio',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [Shadow(blurRadius: 18, color: Colors.black87)],
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedScale(
                scale: widget.scale2,
                duration: const Duration(seconds: 3),
                curve: Curves.ease,
                alignment: Alignment.topCenter,
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 3),
                  opacity: widget.widgetOpacity2,
                  child: Text(
                    selectedLen.len == 0
                        ? 'Here are some of my projects.'
                        : 'Aqui está alguns dos meus projetos.',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 36,
                      shadows: [Shadow(blurRadius: 30, color: Colors.black87)],
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                duration: const Duration(seconds: 3),
                opacity: widget.widgetOpacity3,
                child: AnimatedPadding(
                  padding: EdgeInsets.only(bottom: widget.padValue2),
                  curve: Curves.ease,
                  duration: const Duration(seconds: 2),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          child: ElevatedButton(
                            onPressed: () {
                              selectedLen.changeLen();
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(color: Colors.white),
                              ),
                              backgroundColor: selectedLen.len == 0
                                  ? Colors.white
                                  : Colors.transparent,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 24),
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: Text(
                              'English',
                              style: TextStyle(
                                color: selectedLen.len == 0
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          width: 170,
                          child: ElevatedButton(
                            onPressed: () {
                              selectedLen.changeLen();
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(color: Colors.white),
                              ),
                              backgroundColor: selectedLen.len == 1
                                  ? Colors.white
                                  : Colors.transparent,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 24),
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: Text(
                              'Português',
                              style: TextStyle(
                                color: selectedLen.len == 1
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (showPostsBody)
                AnimatedOpacity(
                  duration: const Duration(seconds: 3),
                  opacity: widget.widgetOpacity4,
                  child: PostsBody(),
                ),
            ],
          )
        ],
      ),
    );
  }
}
