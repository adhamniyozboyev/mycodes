import 'package:flutter/material.dart';
import 'package:mycodes/routes.dart';
import 'package:mycodes/screens/addContact.dart';

class HomePage extends StatefulWidget {
  static const String routName = '/';
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, AddContact.routName, (route) => false);
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text(''),
        );
      }),
    );
  }
}
