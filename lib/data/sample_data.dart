import '../models/schedule_item.dart';
import '../models/task_item.dart';

const List<TaskItem> sampleTasks = [
  TaskItem(
    id: 'T01',
    title: 'Implementasi Responsive UI & Navigator',
    course: 'Mobile Programming',
    deadline: 'Besok, 23:59 WIB',
    priority: 'Tinggi',
    description:
        'Mengubah dashboard satu layar menjadi multi-screen dengan LayoutBuilder, ConstrainedBox, dan passing data antar-halaman.',
  ),
  TaskItem(
    id: 'T02',
    title: 'Analisis Dataset Klasifikasi Sinyal ECG',
    course: 'Biomedical Systems',
    deadline: 'Jumat, 17:00 WIB',
    priority: 'Sedang',
    description:
        'Melakukan ekstraksi fitur dasar dan visualisasi gelombang detak jantung menggunakan Python.',
  ),
  TaskItem(
    id: 'T03',
    title: 'Konfigurasi Static & Dynamic Routing OSPF',
    course: 'Routing Protocols',
    deadline: 'Senin Depan, 12:00 WIB',
    priority: 'Rendah',
    description:
        'Simulasi topologi tiga router dan pengujian konektivitas antar-subnet.',
  ),
];

const List<ScheduleItem> sampleSchedules = [
  ScheduleItem(
    id: 'S01',
    courseName: 'Mobile Programming',
    day: 'Senin',
    time: '08:00 - 10:30 WIB',
    room: 'Lab Rekayasa Perangkat Lunak',
    lecturer: 'Dosen Pengampu Mobile Programming',
    credits: 3,
  ),
  ScheduleItem(
    id: 'S02',
    courseName: 'Data Science',
    day: 'Rabu',
    time: '10:30 - 13:00 WIB',
    room: 'Gedung FTI Ruang 302',
    lecturer: 'Dosen Pengampu Data Science',
    credits: 3,
  ),
  ScheduleItem(
    id: 'S03',
    courseName: 'Internet of Things (IoT)',
    day: 'Kamis',
    time: '13:00 - 15:30 WIB',
    room: 'Lab Sistem Tertanam',
    lecturer: 'Dosen Pengampu IoT',
    credits: 3,
  ),
];