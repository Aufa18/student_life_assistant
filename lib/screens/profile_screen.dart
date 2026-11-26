import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 44,
                    child: Icon(Icons.person, size: 48),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Mahasiswa Teknik Informatika',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Semester 7 • Fakultas Teknologi Industri',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[700],
                        ),
                  ),
                  const SizedBox(height: 24),
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.badge_outlined),
                            title: Text('Program Studi'),
                            subtitle: Text('S1 Teknik Informatika'),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.book_outlined),
                            title: Text('Beban Studi Aktif'),
                            subtitle: Text('21 SKS'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Kembali ke Beranda'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}