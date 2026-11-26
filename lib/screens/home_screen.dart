import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../widgets/feature_card.dart';
import 'profile_screen.dart';
import 'schedule_screen.dart';
import 'task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> featureCards = [
      FeatureCard(
        title: 'Tugas',
        subtitle: '${sampleTasks.length} tugas aktif menunggu dikerjakan',
        icon: Icons.task_alt_rounded,
        accentColor: Colors.indigo,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (_) => const TaskScreen(),
            ),
          );
        },
      ),
      FeatureCard(
        title: 'Jadwal',
        subtitle: '${sampleSchedules.length} mata kuliah minggu ini',
        icon: Icons.calendar_month_rounded,
        accentColor: Colors.teal,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (_) => const ScheduleScreen(),
            ),
          );
        },
      ),
      FeatureCard(
        title: 'Profil',
        subtitle: 'Informasi mahasiswa & ringkasan akademik',
        icon: Icons.person_rounded,
        accentColor: Colors.deepOrange,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (_) => const ProfileScreen(),
            ),
          );
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Life Assistant'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Breakpoint 700px untuk membedakan layout compact dan wide
            final bool isWide = constraints.maxWidth >= 700;

            return Center(
              child: ConstrainedBox(
                // Membatasi lebar maksimal agar kartu tidak meregang berlebihan
                constraints: const BoxConstraints(maxWidth: 1100),
                child: Padding(
                  padding: EdgeInsets.all(isWide ? 32 : 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo, Selamat Belajar!',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        isWide
                            ? 'Tampilan Mode Lebar (3 Kolom Grid)'
                            : 'Tampilan Mode Compact (Daftar Vertikal)',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: isWide
                            ? GridView.count(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 0.85,
                                children: featureCards,
                              )
                            : ListView.separated(
                                itemCount: featureCards.length,
                                separatorBuilder: (_, _) => const SizedBox(height: 12),
                                itemBuilder: (_, index) => featureCards[index],
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}