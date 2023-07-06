import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mycodes/data.dart';

class ContactDetail extends StatelessWidget {
  static const String routeName = '/contactDetail';
  final int index;
  ContactDetail(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 500,
              width: 420,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: Text(contacts[index].name[0]),
                  ),
                  Text(
                    contacts[index].name,
                    style: TextStyle(fontSize: 30),
                  ),
                  Text('Telefon ${contacts[index].phoneNumber}'),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    contacts[index].email,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.phone,
                            color: Colors.green,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message,
                            color: Colors.blue,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.video_call_sharp,
                            color: Colors.purple,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
