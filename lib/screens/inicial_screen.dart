import 'package:flutter/material.dart';
import 'package:portifolio/components/certificate_item.dart';
import 'package:portifolio/components/show_true_or_false.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import '../components/projects.dart';
import '../components/selected_len.dart';
import 'package:provider/provider.dart';

import 'bootcamp.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  double widgetOpacity1 = 0.0;
  double widgetOpacity2 = 0.0;
  double widgetOpacity3 = 0.0;
  double widgetOpacity4 = 0.0;

  double scale1 = 0.4;
  double scale2 = 0.4;

  double padValue1 = 200;
  double padValue2 = 400;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {
          widgetOpacity1 = 1;
          scale1 = 1;
        }));

    Future.delayed(const Duration(seconds: 3)).then((value) => setState(() {
          widgetOpacity2 = 1;
          scale2 = 1;
        }));

    Future.delayed(const Duration(seconds: 5)).then((value) => setState(() {
          widgetOpacity3 = 1;
        }));

    Future.delayed(const Duration(seconds: 6)).then((value) => setState(() {
          widgetOpacity4 = 1;
    }));

    Future.delayed(const Duration(seconds: 6)).then((value) => setState(() {
          padValue1 = 70;
          padValue2 = 70;
        }));

    super.initState();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedLen = Provider.of<SelectedLen>(context);

    return Scaffold(
      appBar: AppBar(
        title: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Container(
            width: 400,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onItemTapped(0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: _selectedIndex == 0
                              ? [
                                  const BoxShadow(
                                    color: Color(0x26ffffff),
                                    blurRadius: 20,
                                    spreadRadius: 0,
                                  )
                                ]
                              : [],
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Center(
                          child: Text(
                            selectedLen.len == 0 ? 'Projects' : 'Projetos',
                            style: TextStyle(
                                fontWeight: _selectedIndex == 0
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onItemTapped(1),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: _selectedIndex == 1
                              ? [
                                  const BoxShadow(
                                    color: Color(0x26ffffff),
                                    blurRadius: 20,
                                    spreadRadius: 0,
                                  )
                                ]
                              : [],
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Center(
                          child: Text(
                            'Bootcamp',
                            style: TextStyle(
                                fontWeight: _selectedIndex == 1
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onItemTapped(2),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: _selectedIndex == 2
                              ? [
                                  const BoxShadow(
                                    color: Color(0x26ffffff),
                                    blurRadius: 20,
                                    spreadRadius: 0,
                                  )
                                ]
                              : [],
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Center(
                          child: Text(
                            selectedLen.len == 0
                                ? 'Certificates'
                                : 'Certificados',
                            style: TextStyle(
                                fontWeight: _selectedIndex == 2
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        leading: const SizedBox(
          width: 200,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff16161C),
        shadowColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              launch('https://github.com/BrenoSLima');
            },
            icon: Image.asset(
              'assets/images/icons/github_icon.png',
              color: Colors.white70,
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(width: 5,),
          IconButton(
            onPressed: () {
              launch('https://www.linkedin.com/in/brenolimaa/');
            },
            icon: Image.asset(
              'assets/images/icons/linkedin_icon.png',
              color: Colors.white70,
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(width: 30)
        ],
      ),
      body: Container(
        color: const Color(0xff1D1D24),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.13,
              child: Image.asset(
                'assets/images/textures/noise.jpg',
                width: double.infinity,
                height: double.infinity,
                repeat: ImageRepeat.repeat,
              ),
            ),
            _selectedIndex == 0 // Projects
                ? Projects(
                    scale1: scale1,
                    scale2: scale2,
                    widgetOpacity1: widgetOpacity1,
                    widgetOpacity2: widgetOpacity2,
                    widgetOpacity3: widgetOpacity3,
                    widgetOpacity4: widgetOpacity4,
                    padValue1: padValue1,
                    padValue2: padValue2,
                  )
                : _selectedIndex == 1 // Bootcamp
                    ? const Bootcamp()
                    : ListView(
                      children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 50.0, left: 25, right: 25, top: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        launch(
                                            "https://cursos.alura.com.br/user/brenobreno1949/fullCertificate/5f0d078f1761138f65d629044b87cc24");
                                      },
                                      child: const FittedBox(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                              "Alura",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 55,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 12),
                                              child: Icon(
                                                size: 35,
                                                Icons.open_in_new,
                                                color: Colors.white,
                                                weight: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(boxShadow: [
                                      BoxShadow(
                                          color: Colors.black45,
                                          blurRadius: 50,
                                          spreadRadius: 7)
                                    ]),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(35.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 1100,
                                            color: const Color(0xcc111115),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 30,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 30),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 15),
                                                  Text("Data Science",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(height: 10),
                                                  CertificateItem(
                                                    text:
                                                        "Deep Learning part 1: Keras 5hrs",
                                                  ),
                                                  CertificateItem(
                                                    text:
                                                        "Deep Learning Part 2: How the Network Learns 6hrs",
                                                  ),
                                                  CertificateItem(
                                                    text:
                                                        "Deep Learning: prediction with Keras 10hrs",
                                                  ),
                                                  CertificateItem(
                                                    text:
                                                        "SQL with MySQL: manipulate and query data 12hrs",
                                                  ),
                                                  SizedBox(height: 20),
                                                  Text("DevOps",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(height: 15),
                                                  CertificateItem(
                                                    text:
                                                        "Git and Github: Control and share your code 6hrs",
                                                  ),
                                                  CertificateItem(
                                                    text:
                                                        "Git and Github: branching strategies, Conflicts and Pull Requests 8hrs",
                                                  ),
                                                  SizedBox(height: 20),
                                                  Text(
                                                    "Mobile",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(height: 15),
                                                  CertificateItem(
                                                    text:
                                                        "Flutter: Widgets, Stateless, Stateful, Images and Animations 16hrs",
                                                  ),
                                                  CertificateItem(
                                                    text:
                                                        "Flutter: Controller, navigation and states 10hrs",
                                                  ),
                                                  CertificateItem(
                                                    text:
                                                        "Flutter with Firebase: Implementing Online Database with Cloud Firestore 8h",
                                                  ),
                                                  SizedBox(height: 15),
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
                          ),
                        ],
                    ),
          ],
        ),
      ),
    );
  }
}
