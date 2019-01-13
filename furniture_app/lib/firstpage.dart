import 'package:flutter/material.dart';

import 'dart:async';


class FirstPAge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('My Frist App'),
        )),
        body: new _MyList());
  }
}

class _MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(4.0),
      itemBuilder: (context, i) {
        return ListTile(
          title: Text('Some Ramdom Username'),
          subtitle: Text(
            'Online',
            style: TextStyle(color: Colors.green, fontStyle: FontStyle.italic),
          ),
          leading: Icon(Icons.face),
          trailing: RaisedButton(
            child: Text('Remove'),
            onPressed: () {
              delectDialog(context).then((value) {
                print('Value is $value');
              });
            },
          ),
        );
      },
    );
  }
}

Future<bool> delectDialog(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false, //can't dismiss dialog
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are You Sure ? '),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            FlatButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            )
          ],
        );
      });
}
