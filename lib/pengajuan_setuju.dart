import 'package:flutter/material.dart';

class PengajuanSetuju extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SubmissionView(),
    );
  }
}

class SubmissionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context); // Kembali jika memungkinkan
            }
          },
        ),
        title: Text('LIHAT PENGAJUAN'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Aksi untuk notifikasi
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person, size: 50, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe - Nama Dosen',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Pengajar Prodi',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Informasi Sertifikasi yang Diajukan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity, // Mengatur lebar agar mengisi ruang
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 12.0), // Menambah padding
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Membuat sudut melingkar
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Rekomendasi atau saran',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Pilih rekomendasi atau saran oleh Pimpinan jurusan. Diisi rekomendasi atau saran oleh Pimpinan Jurusan.',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Pengajuan Disetujui',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '"Setelah melalui pertimbangan, kami informasikan bahwa pengajuan sertifikasi Anda saat ini belum dapat disetujui."',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green),
            ),
            ElevatedButton(
              onPressed: () {
                // Aksi tombol kembali
              },
              child: Text('Kembali'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.blue, // Mengganti primary dengan backgroundColor
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
