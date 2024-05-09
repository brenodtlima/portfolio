import 'package:flutter/material.dart';
import 'package:portifolio/models/bootcamp_item.dart';
import 'package:url_launcher/url_launcher.dart';

class BootcampComponent extends StatefulWidget {
  final BootcampItem item; // Define item as a property of the class

  const BootcampComponent(this.item, {Key? key}) : super(key: key);

  @override
  State<BootcampComponent> createState() => _BootcampComponentState();
}

class _BootcampComponentState extends State<BootcampComponent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 50, spreadRadius: 7)
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35.0),
                child: Column(
                  children: [
                    Container(
                      width: 1300,
                      color: const Color(0xcc111115),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 10, bottom: 10, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Text(widget.item.title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.item.description,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  launch(widget.item.link);
                                },
                                child: FittedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Link: ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
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
                                      ), const Text(
                                        'Github',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        size: 20,
                                        Icons.open_in_new,
                                        color: Colors.blue,
                                        weight: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              spacing: 7,
                              runSpacing: 9,
                              children: [
                                for (var subject in widget.item.subjects)
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Container(
                                      color: const Color(0xff25252C),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 10,
                                            right: 10),
                                        child: Text(
                                          subject,
                                          style: TextStyle(
                                            color: const Color(0xebFFFFFF),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
