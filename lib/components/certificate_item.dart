import 'package:flutter/material.dart';

class CertificateItem extends StatelessWidget {
  const CertificateItem({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Text(
        "\u2022",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
      //bullet text
      const SizedBox(
        width: 10,
      ),
      //space between bullet and text
      Expanded(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ), //text
      )
    ]);
  }
}

