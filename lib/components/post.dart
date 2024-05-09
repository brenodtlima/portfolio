import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portifolio/components/selected_len.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/post_model.dart';

class Post extends StatefulWidget {
  final PostModel post_model;
  final Color cor;

  const Post({required this.post_model,required this.cor, Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final double fontSizeAllTitles = 70;

  final double fontSizeAllTexts = 21;

  final double fontSizeWraping = 15;

  @override
  Widget build(BuildContext context) {
    final selectedLen = Provider.of<SelectedLen>(context);
    return Container(
      width: 1920,
      color: widget.cor,
      child: Stack(
        children: [
          Container(
            child: Image.asset(widget.post_model.image_path,
                fit: BoxFit
                    .cover), // Ajusta a imagem para cobrir todo o Container
          ),
          Align(
            alignment: widget.post_model.side == 'r'
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Container(
                width: (MediaQuery.of(context).size.width*0.5) * (1600/MediaQuery.of(context).size.width) ,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post_model.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontSizeAllTitles,
                          color: Colors.white,
                          height: 1,
                          shadows: [
                            Shadow(
                              offset: const Offset(2.0, 2.0),
                              // Define o deslocamento horizontal e vertical da sombra
                              blurRadius: 3.0,
                              // Define o raio do desfoque da sombra
                              color: Colors.black
                                  .withOpacity(0.5), // Define a cor da sombra
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        widget.post_model.text,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSizeAllTexts,
                          fontWeight: FontWeight.normal,
                          shadows: [
                            Shadow(
                              offset: const Offset(2.0, 2.0),
                              // Define o deslocamento horizontal e vertical da sombra
                              blurRadius: 3.0,
                              // Define o raio do desfoque da sombra
                              color: Colors.black
                                  .withOpacity(0.5), // Define a cor da sombra
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            launch(widget.post_model.link);
                          },
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Row(
                              children: [
                                Text(
                                  'Link: ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      shadows: [
                                        Shadow(
                                          offset: const Offset(2.0, 2.0),
                                          // Define o deslocamento horizontal e vertical da sombra
                                          blurRadius: 3.0,
                                          // Define o raio do desfoque da sombra
                                          color: Colors.black.withOpacity(
                                              0.5), // Define a cor da sombra
                                        ),
                                      ]),
                                ),
                                widget.post_model.link != "In progress"
                                    ? const Text(
                                        'GitHub',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                        ),
                                      )
                                    : const Text(
                                        'In progress',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                const SizedBox(
                                  width: 5,
                                ),
                                widget.post_model.link != "In progress"
                                    ? const Icon(
                                        size: 20,
                                        Icons.open_in_new,
                                        color: Colors.blue,
                                        weight: 20,
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // list
                      Wrap(
                        spacing: 6,
                        runSpacing: 9,
                        children: [
                          for (var tool in widget.post_model.tools)
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Container(
                                color: const Color(0xff25252C),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10, right: 10),
                                  child: Text(
                                    tool,
                                    style: TextStyle(
                                      color: const Color(0xebFFFFFF),
                                      fontSize: fontSizeWraping,
                                    ),
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
