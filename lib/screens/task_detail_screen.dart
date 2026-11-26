import 'package:flutter/material.dart';
import '../models/task_item.dart';

class TaskDetailScreen extends StatelessWidget {
  final TaskItem item;

  const TaskDetailScreen({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Tugas'),
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Chip(
                    label: Text('Prioritas: ${item.priority}'),
                    backgroundColor: Colors.indigo.withValues(alpha: 0.1),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Mata Kuliah: ${item.course}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.indigo,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Tenggat Waktu: ${item.deadline}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[700],
                        ),
                  ),
                  const Divider(height: 32),
                  Text(
                    'Deskripsi Tugas',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Kembali ke Daftar Tugas'),
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