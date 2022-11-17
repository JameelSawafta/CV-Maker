import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  String item;
  IconData icon;
  String pageName;
  DrawerItem({required this.item, required this.icon, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$item',style: TextStyle(fontSize: 16),),
      leading: Icon(icon,color: Color(0xff05172a),),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, '$pageName');
      },
    );
  }
}

