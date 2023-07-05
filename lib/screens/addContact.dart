import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  static const String routName = '';
  AddContact({super.key});

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formKey,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(),
              )
            ],
          )),
    );
  }
}
