import 'package:flutter/material.dart';

import 'widget/myDrawer.dart';

class AddPhoto extends StatelessWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Photo'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
    );
  }
}
