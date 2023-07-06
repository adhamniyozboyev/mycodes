import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mycodes/data.dart';
import 'package:mycodes/models/class.dart';
import 'package:mycodes/screens/homePage.dart';

class AddContact extends StatelessWidget {
  static const String routName = '';
  AddContact({super.key});

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Contact newContact = Contact(name: 'name', phoneNumber: 'phoneNumber');

    return Scaffold(
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[A-Z 0-9 a-z \']'))
                  ],
                  decoration: InputDecoration(
                      helperText: 'Enter name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Enter name';

                    newContact.name = value[0].toUpperCase() +
                        value.substring(1).toLowerCase();
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 50),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9 +]'))
                    ],
                    decoration: InputDecoration(
                        helperText: 'Enter phone number',
                        hintText: '+998',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 13)
                        return 'Enter Phone Number';

                      newContact.phoneNumber = value;

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
                    newContact.email = value;
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.email)),
                ),
                SizedBox(
                  height: 90,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel')),
                    TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            contacts.add(newContact);

                            Navigator.pushNamedAndRemoveUntil(
                                context, HomePage.routName, (route) => false);
                          }
                        },
                        child: Text('Save'))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
