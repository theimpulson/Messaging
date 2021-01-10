import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telephony/telephony.dart';

class Conversations extends StatelessWidget {
  // Retrieve the instance of the telephony package
  final Telephony telephony = Telephony.instance;

  Future<bool> permission_status() async {
    return await telephony.requestPhoneAndSmsPermissions;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: permission_status(),
      builder: (context, snapshot) {
        if (snapshot.hasData != null && snapshot.data != true) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(vertical: 03.0),
            title: Text('Permission Error!'),
            content: Text(
                'Required permissions are missing\nPlease grant them manually to use this app'),
            actions: [
              TextButton(
                child: Text('Got it!'),
                onPressed: () {
                  return SystemNavigator.pop();
                },
              ),
            ],
          );
        } else if (snapshot.hasData == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container(
            child: Center(
              child: Text("Once you start a new conversation, you'll see it\nlisted here"),
            ),
          );
        }
      },
    );
  }
}
