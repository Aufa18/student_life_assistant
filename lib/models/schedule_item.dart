class ScheduleItem {
  final String id;
  final String courseName;
  final String day;
  final String time;
  final String room;
  final String lecturer;
  final int credits;

  const ScheduleItem({
    required this.id,
    required this.courseName,
    required this.day,
    required this.time,
    required this.room,
    required this.lecturer,
    required this.credits,
  });
}