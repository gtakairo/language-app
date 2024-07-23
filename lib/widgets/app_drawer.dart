import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(bool) onViewChanged;

  AppDrawer({required this.onViewChanged});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('メニュー', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: Text('全フレーズ'),
            onTap: () {
              onViewChanged(false);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('お気に入り'),
            onTap: () {
              onViewChanged(true);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}