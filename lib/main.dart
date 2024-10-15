import 'package:flutter/material.dart';
import 'notifikasi_pengajuan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notifikasi Pengajuan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotificationScreen(),
    );
  }
}
