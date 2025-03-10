import 'package:flutter/material.dart';
import 'package:kullanici_girisi/actions/icon_actions.dart';

class Baslik extends StatelessWidget implements PreferredSizeWidget {
  const Baslik({super.key});

  @override
  Widget build(BuildContext context) {
    var iconColor = Colors.grey.shade100;
    return AppBar(
      backgroundColor: Colors.deepPurpleAccent.shade700,
      title: Text(
        'Kullanici Girişi',
        style: TextStyle(
          color: iconColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        color: iconColor,
        icon: Icon(Icons.home),
        onPressed: () {
          HomeIconAction().homeIconAction();
        },
      ),
      actions: [
        IconButton(
          color: iconColor,
          icon: Icon(Icons.alarm),
          onPressed: () {
            AlarmIconAction().alarmIconAction();
          },
        ),
        IconButton(
          color: iconColor,
          icon: Icon(Icons.settings),
          onPressed: () {
            AyarIconAction().ayarIconAction();
          },
        ),
        IconButton(
          color: iconColor,
          icon: Icon(Icons.info),
          onPressed: () {
            BilgiIconAction().bilgiIconAction();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
