import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mycodes/data.dart';
import 'package:mycodes/screens/addContact.dart';
import 'package:mycodes/screens/editPage.dart';

class ContactDetail extends StatefulWidget {
  static const String routeName = '/contactDetail';
  final int index;
  ContactDetail(this.index, {super.key});

  @override
  State<ContactDetail> createState() => _ContactDetailState();
}

class _ContactDetailState extends State<ContactDetail> {
  Icon icon = Icon(Icons.star_outline);
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: Scaffold(
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: icon),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, EditPage.routeName);
                },
                icon: Icon(Icons.mode_edit_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('O\'chirib tashla')),
                PopupMenuItem(child: Text('Kontaktni bloklash'))
              ];
            })
          ],
        ),
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
                      backgroundColor: Colors.greenAccent,
                      child: Text(
                        contacts[widget.index].name[0],
                      ),
                    ),
                    Text(
                      contacts[widget.index].name,
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    Text('Telefon ${contacts[widget.index].phoneNumber}'),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      contacts[widget.index].email,
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.phone,
                                color: Colors.white,
                              )),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.message,
                                color: Colors.white,
                              )),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.video_call_sharp,
                                color: Colors.white,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
