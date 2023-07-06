import 'package:flutter/material.dart';
import 'package:mycodes/screens/addContact.dart';
import 'package:mycodes/screens/contactDetail.dart';
import 'package:mycodes/screens/homePage.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePage.routName:
      return MaterialPageRoute(builder: (context) => HomePage());
    case AddContact.routName:
      return MaterialPageRoute(builder: (context) => AddContact());
    case ContactDetail.routeName:
      return MaterialPageRoute(
          builder: (context) => ContactDetail(settings.arguments as int));
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(child: Text('Not Found')),
              ));
  }
}
