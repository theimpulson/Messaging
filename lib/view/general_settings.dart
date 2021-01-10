import 'dart:developer';

import 'package:flutter/material.dart';

class GeneralSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Settings'),
        backgroundColor: Colors.lightGreen[700],
        centerTitle: false,
        toolbarHeight: 60.0,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Open-source licenses'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.2),
          ),
        ),
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                title: Text('Default SMS app'),
                subtitle: Text('Messaging'),
              ),
              SwitchListTile(
                title: Text('Outgoing message sounds'),
                value: true,
                activeColor: Colors.amber[600],
                onChanged: (bool value) => log('Switch toggled'),
              ),
              ListTile(
                title: Text('Notifications'),
              ),
              SwitchListTile(
                title: Text('Emoticons access'),
                subtitle: Text('Show the emoticons on the keyboard'),
                value: true,
                activeColor: Colors.amber[600],
                onChanged: (bool value) => log('Switch toggled'),
              ),
              SwitchListTile(
                title: Text('Swipe to delete'),
                subtitle: Text('Swipe to the right to delete a conversation'),
                value: true,
                activeColor: Colors.amber[600],
                onChanged: (bool value) => log('Switch toggled'),
              ),
            ],
          ).toList(),
        ),
      ),
    );
  }
}
