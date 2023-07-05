import 'package:flutter/material.dart';
import 'package:mycodes/screens/addContact.dart';
import 'package:mycodes/screens/homePage.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePage.routName:
      return MaterialPageRoute(builder: (context) => HomePage());
    case AddContact.routName:
      return MaterialPageRoute(builder: (context) => AddContact());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(child: Text('Not Found')),
              ));
  }
}
