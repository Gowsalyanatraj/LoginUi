import 'package:flutter/material.dart';

class RegisterNow extends StatelessWidget {
  const RegisterNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 700,
          width: 700,
          decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
          child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextFormField(
                validator:  (value) {
                return value!.isEmpty ? 'Please add an email' : null;
              },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
        ),
      ),
    );
  }
}
