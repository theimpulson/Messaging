import 'package:flutter/material.dart';

class Archived extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Archived'),
        centerTitle: false,
        backgroundColor: Colors.grey[600],
        toolbarHeight: 60.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                width: 0.2
            ),
          ),
        ),
        child: Center(
          child: Text('Archived conversations appear here'),
        ),
      ),
    );
  }
}