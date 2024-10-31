import 'package:flutter/material.dart';

class EditProfileDosen extends StatefulWidget {
  @override
  _EditProfileDosenState createState() => _EditProfileDosenState();
}

class _EditProfileDosenState extends State<EditProfileDosen> {
  TextEditingController namaDosenController = TextEditingController();
  TextEditingController pengajarProdiController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController pendidikanController = TextEditingController();
  TextEditingController bidangKeahlianController = TextEditingController();
  TextEditingController hkiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Menambahkan warna latar belakang
      appBar: AppBar(
        title: Text(
          'EDIT PROFILE DOSEN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Aksi untuk notifikasi
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Aksi untuk pengaturan
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.purple[100], // Warna latar avatar
                  backgroundImage: AssetImage('assets/profile_placeholder.png'),
                ),
              ),
              SizedBox(height: 16),
              buildTextField('Nama Dosen', namaDosenController),
              buildTextField('Pengajar Prodi', pengajarProdiController),
              buildTextField('Deskripsi', deskripsiController, maxLines: 4),
              buildTextField('Pendidikan', pendidikanController),
              buildTextField('Bidang Keahlian', bidangKeahlianController),
              buildTextField('HKI dan Produk Unggulan', hkiController,
                  maxLines: 4),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (namaDosenController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Nama Dosen tidak boleh kosong')));
                        return;
                      }
                    },
                    child: Text('EDIT'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi untuk tombol hapus
                    },
                    child: Text('HAPUS'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Kembali tanpa menyimpan
                    },
                    child: Text('BATALKAN'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, TextEditingController controller,
      {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26), // Warna border
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
