import 'dart:developer';
import 'package:flutter/material.dart';

import 'package:messaging/view/archived.dart';
import 'package:messaging/view/settings.dart';
import 'package:messaging/view/conversations.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messaging'),
        backgroundColor: Colors.lightGreen[700],
        centerTitle: false,
        toolbarHeight: 60.0,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(right: 70.0),
                      child: Text('Archived'),
                    ),
                    onTap: () {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Archived(),
                        ),
                      );
                    },
                  ),
                ),
                PopupMenuItem(
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(right: 70.0),
                      child: Text('Settings'),
                    ),
                    onTap: () {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Settings(),
                        ),
                      );
                    },
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.2
            ),
          ),
        ),
        child: Conversations(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return log('FAB pressed!');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
