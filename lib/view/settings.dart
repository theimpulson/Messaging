import 'package:flutter/material.dart';

import 'package:messaging/view/general_settings.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: false,
        backgroundColor: Colors.lightGreen[700],
        toolbarHeight: 60.0,
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('Settings'),
              onTap: () {
                return Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeneralSettings(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('"Vi" SIM'),
              subtitle: Text('Unknown number'),
            ),
            ListTile(
              title: Text('"Verizon" SIM'),
              subtitle: Text('Unknown number'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
