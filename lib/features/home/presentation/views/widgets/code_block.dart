import 'package:flutter/material.dart';
import 'package:type_text/type_rich_text.dart';

Widget addStack(Widget child, double width, double height) {
  return Stack(
    children: [
      Container(
        padding: const EdgeInsets.all(16),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: child,
      ),
    ],
  );
}

class CodeBlock extends StatelessWidget {
  const CodeBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MacDots(),
          SizedBox(
            height: 8,
          ),
          Code(),
        ],
      ),
    );
  }
}

class MacDots extends StatelessWidget {
  const MacDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 6,
          backgroundColor: Colors.yellow,
        ),
        SizedBox(
          width: 6,
        ),
        CircleAvatar(
          radius: 6,
          backgroundColor: Colors.green,
        ),
        SizedBox(
          width: 6,
        ),
        CircleAvatar(
          radius: 6,
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}

class Code extends StatelessWidget {
  const Code({super.key});

  @override
  Widget build(BuildContext context) {
    return const TypeRichText(
      text: TextSpan(
        text: '\$ find / name -"life.dart"\n\n',
        style: TextStyle(color: Colors.white),
        children: <TextSpan>[
          TextSpan(
            text: '> Searching . . .\n\n',
            style: TextStyle(color: Colors.grey),
          ),
          TextSpan(
            text: '> Error: No life is found!\n\n',
            style: TextStyle(color: Colors.red),
          ),
          TextSpan(
            text: "> Since you are a programmer, you have no life!",
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
      duration: Duration(seconds: 5),
    );
  }
}
