import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'pengajuan_setuju.dart';
import 'pengajuan_tolak.dart';
import 'pengajuan_proses.dart';

class NotificationScreen extends StatelessWidget {
  // GlobalKey untuk membuka drawer
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, String>> submissionList = [
    {
      'name': 'John Doe',
      'status': 'Pengajuan Belum Dapat Disetujui',
      'color': 'red',
    },
    {
      'name': 'John Doe',
      'status': 'Pengajuan Disetujui',
      'color': 'green',
    },
    {
      'name': 'John Doe',
      'status': 'Pengajuan sedang diproses',
      'color': 'blue',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Gunakan GlobalKey untuk scaffold
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        title: Text(
          'NOTIFIKASI PENGAJUAN',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            _scaffoldKey.currentState
                ?.openDrawer(); // Buka drawer saat ikon ditekan
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      drawer: SideBar(), // Menggunakan sidebar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar Pengajuan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: submissionList.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 30,
                        child: Text('Foto'),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${submissionList[index]['name']} - Nama Dosen'),
                          Text(
                            'Pengajar Prodi\nInformasi Pengajuan',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        submissionList[index]['status']!,
                        style: TextStyle(
                          color: submissionList[index]['color'] == 'red'
                              ? Colors.red
                              : submissionList[index]['color'] == 'green'
                                  ? Colors.green
                                  : Colors.blue,
                        ),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          // Navigasi ke halaman berbeda sesuai status pengajuan
                          String status = submissionList[index]['status']!;
                          if (status == 'Pengajuan Belum Dapat Disetujui') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PengajuanTolak(),
                              ),
                            );
                          } else if (status == 'Pengajuan Disetujui') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PengajuanTolak(),
                              ),
                            );
                          } 
                        },
                        child: Text('Lihat'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
