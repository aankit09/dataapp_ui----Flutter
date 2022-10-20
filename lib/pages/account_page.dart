import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final List<dynamic> list = [
    {'id': 0, 'leading': 'Name', 'trailing': 'Adam Markam'},
    {'id': 1, 'leading': 'Contact Number', 'trailing': '+06 25694816'},
    {'id': 2, 'leading': 'Address', 'trailing': 'UK'},
    {'id': 3, 'leading': 'Security Code', 'trailing': 'SYM12113OI'},
    {'id': 4, 'leading': 'Work Details', 'trailing': 'Remote'},
  ];

  int index = 0;
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details'),
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                list[index]['leading'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                list[index]['trailing'],
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            );
            ;
          },
        ),
      ),
    );
  }
}
