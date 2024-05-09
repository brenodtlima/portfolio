import 'package:flutter/material.dart';
import 'package:portifolio/components/bootcamp_component.dart';
import 'package:portifolio/components/posts_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/selected_len.dart';
import '../models/bootcamp_item.dart';
import '../repositories//bootcamp_tasks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Bootcamp extends StatefulWidget {
  const Bootcamp({Key? key}) : super(key: key);

  @override
  State<Bootcamp> createState() => _BootcampState();
}

class _BootcampState extends State<Bootcamp> {
  @override
  Widget build(BuildContext context) {
    final selectedLen = Provider.of<SelectedLen>(context);

    List<BootcampItem> items =
    selectedLen.len == 0 ? bootcampTasks.items_en : bootcampTasks.items_pt;

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Column(
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      selectedLen.len == 0
                          ? launch(
                          "https://github.com/BrenoSLima/bootcamp/tree/main/en")
                          : launch(
                          "https://github.com/BrenoSLima/bootcamp/tree/main/pt");
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            selectedLen.len == 0
                                ? 'Data Science Bootcamp'
                                : 'Bootcamp em Ciência de dados',
                            style: const TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(blurRadius: 18, color: Colors.black87)
                                ]),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            size: 80,
                            Icons.open_in_new,
                            color: Colors.white,
                            weight: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 1100,
                  child: Text(
                    selectedLen.len == 0
                        ? 'Here are different tasks i made in a bootcamp. They were written by me and were based on courses, articles and videos about various data science topics, such as NLP, computer vision, deep learning and more.'
                        : 'Aqui estão diferentes tarefas que fiz e esem um bootcamp. Elas são escritas por mim e são baseadas em vídeos, artigos e cursos sobre diversos tópicos de ciência de dados, como NLP, visão computacional, deep learning e mais.',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 25,
                        shadows: [
                          Shadow(blurRadius: 30, color: Colors.black87)
                        ]),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                // selectedLen.len == 0
                //     ? const Text("",
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontWeight: FontWeight.normal,
                //             fontSize: 15,
                //             shadows: [
                //               Shadow(blurRadius: 30, color: Colors.black87)
                //             ]))
                //     : const SizedBox(
                //         height: 10,
                //       ),
                // selectedLen.len == 0
                //     ? const SizedBox(
                //   height: 10,
                // )
                const SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
              ],
            ),
          ),
        ),
        PostsGridView()
      ],
    );
  }
}
