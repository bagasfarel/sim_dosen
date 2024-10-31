import 'package:flutter/material.dart';
import 'notifikasi_pengajuan.dart';
import 'pengajuan_setuju.dart';
import 'pengajuan_tolak.dart';
import 'edit_profil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'notifikasi_pengajuan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotificationScreen(),
    );
  }
}
