import 'package:flutter/material.dart';

class SigIn extends StatelessWidget {
  const SigIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        backgroundColor: Color.fromARGB(255, 158, 224, 255),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Column(children: [
              Text(
                '💐 You are Welcome💐 ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.pink.shade300),
              ),
              Column(
                children: [Text('🤗 🤗 ')],
              )
            ]),
          ),
        ));

    // body: Container(
    //     children:
    //       [Padding(
    //         padding: const EdgeInsets.only(bottom: 100),
    //         child: Text(
    //           '💐 You are Welcome💐 ',
    //           style: TextStyle(
    //               fontSize: 30,
    //               fontWeight: FontWeight.w700,
    //               color: Colors.pink.shade300),
    //         ),
    //       ),
    //     ],

    //   ),
  }
}
