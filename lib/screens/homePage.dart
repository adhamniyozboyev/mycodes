import 'package:flutter/material.dart';
import 'package:mycodes/data.dart';
import 'package:mycodes/routes.dart';
import 'package:mycodes/screens/addContact.dart';
import 'package:mycodes/screens/contactDetail.dart';

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
                // Navigator.pushNamedAndRemoveUntil(
                //     context, AddContact.routName, (route) => false);
                Navigator.pushNamed(context, AddContact.routName);
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, ContactDetail.routeName,
                    arguments: index);
              },
              leading: CircleAvatar(child: Text(contacts[index].name[0])),
              title: Text(contacts[index].name),
              trailing: Icon(Icons.phone),
            );
          }),
    );
  }
}
