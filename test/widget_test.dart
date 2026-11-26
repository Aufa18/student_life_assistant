import 'package:flutter_test/flutter_test.dart';
import 'package:student_life_assistant/main.dart';

void main() {
  testWidgets('Menampilkan dashboard dan navigasi ke daftar tugas', (tester) async {
    await tester.pumpWidget(const StudentLifeAssistantApp());

    // Verifikasi elemen utama dashboard Bab 4 tampil
    expect(find.text('Student Life Assistant'), findsOneWidget);
    expect(find.text('Halo, Selamat Belajar!'), findsOneWidget);
    expect(find.text('Tugas'), findsOneWidget);
    expect(find.text('Jadwal'), findsOneWidget);
    expect(find.text('Profil'), findsOneWidget);

    // Uji navigasi push ke TaskScreen
    await tester.tap(find.text('Tugas'));
    await tester.pumpAndSettle();

    expect(find.text('Daftar Tugas'), findsOneWidget);
  });
}