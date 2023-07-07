import 'package:flutter/material.dart';
import 'package:mycodes/data.dart';
import 'package:mycodes/models/class.dart';
import 'addContact.dart';
import 'contactDetail.dart';
import 'homePage.dart';
import 'package:flutter/services.dart';

class EditPage extends StatefulWidget {
  static const String routeName = '/edit';
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final formKey = GlobalKey<FormState>();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    // Contact change=newContact;
    Contact editContact = Contact(name: 'name', phoneNumber: 'number');
    return Scaffold(
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 60, right: 10, left: 10),
            child: Column(
              children: [
                TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp('[A-Z 0-9 a-z \']'))
                  ],
                  decoration: InputDecoration(
                      helperText: 'Enter name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Enter name';

                    editContact.name = value[0].toUpperCase() +
                        value.substring(1).toLowerCase();
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, bottom: 45),
                  child: TextFormField(
                    maxLength: 13,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9 +]'))
                    ],
                    decoration: InputDecoration(
                        helperText: 'Enter phone number',
                        hintText: '+998',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 13)
                        return 'Enter Phone Number';

                      editContact.phoneNumber = value;

                      return null;
                    },
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    int a = value.toString().indexOf("@gmail.com");
                    print(a);
                    if (value.toString().length != a + 10) {
                      return "not found!";
                    }
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@gmail.com')) {
                      return 'Enter correct email';
                    }
                    editContact.email = value;
                    return null;
                  },
                  decoration: InputDecoration(
                      helperText: 'Enter email',
                      labelText: 'Email Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: Icon(Icons.email)),
                ),
                SizedBox(
                  height: 400,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.red),
                        )),
                    TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            contacts.remove(newContact);
                            contacts.add(editContact);
                            Navigator.pushNamedAndRemoveUntil(
                                context, HomePage.routName, (route) => false);
                          }
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
