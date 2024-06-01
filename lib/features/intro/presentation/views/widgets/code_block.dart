import 'package:flutter/material.dart';
import 'package:type_text/type_rich_text.dart';

class CodeBlock extends StatefulWidget {
  const CodeBlock({
    super.key,
  });

  @override
  State<CodeBlock> createState() => _CodeBlockState();
}

class _CodeBlockState extends State<CodeBlock>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )
      ..addListener(() {
        setState(() {});
      })
      ..forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double width, height;
    if (screenWidth < 512) {
      width = 280;
      height = 200;
    } else {
      width = 350;
      height = 200;
    }
    return SizedBox(
      height: height + 20,
      width: width + 15,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20 * controller.value,
              left: 15 * controller.value,
            ),
            padding: const EdgeInsets.all(16),
            width: width,
            height: height,
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
          ),
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
