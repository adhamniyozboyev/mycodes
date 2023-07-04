import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
    static String routName='/';
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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text(''),
        );
      }),
    );
  }
}
