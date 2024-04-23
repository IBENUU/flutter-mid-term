import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late DateTime _selectedDay;
  late CalendarFormat _calendarFormat;
  late Map<DateTime, List<dynamic>> _events;
  // ignore: unused_field
  late List<dynamic> _selectedEvents;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _calendarFormat = CalendarFormat.week;
    _events = {};
    _selectedEvents = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Widget untuk menampilkan ikon "search for task" dan "clear"
          Container(
            color: Colors.grey[200], // Atur latar belakang warna abu-abu muda
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 56, // Ubah tinggi widget menjadi 56
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Implementasi aksi pencarian
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    // Implementasi aksi untuk menghapus pencarian
                  },
                ),
              ],
            ),
          ),
          // Widget untuk menampilkan teks "Task"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Task',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900]),
            ),
          ),
          // Widget untuk menampilkan kalender
          _buildTableCalendar(),
          const SizedBox(height: 20),
          // Widget untuk menampilkan hari dan waktu
          _buildDayAndTime(),
          const SizedBox(height: 20),
          // Widget untuk menampilkan tugas
          _buildTask(
            time: '07:00',
            title: 'Cleaning Clothes',
            duration: '07:00 - 07:15',
            priority: 'Urgent',
            location: 'Home',
            icon: Icons.cleaning_services,
          ),
          _buildTask(
            time: '08:00',
            title: 'Cleaning Clothes',
            duration: '08:00 - 08:35',
            priority: 'Urgent',
            location: 'Home',
            icon: Icons.cleaning_services,
          ),
        ],
      ),
    );
  }

  // Widget untuk menampilkan kalender
  Widget _buildTableCalendar() {
    return TableCalendar(
      focusedDay: _selectedDay,
      firstDay: DateTime.utc(2021, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      calendarFormat: _calendarFormat,
      availableCalendarFormats: const {
        CalendarFormat.week: 'Week',
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _selectedEvents = _events[_selectedDay] ?? [];
        });
      },
      eventLoader: (day) {
        return _events[day] ?? [];
      },
    );
  }

  // Widget untuk menampilkan hari dan waktu
  Widget _buildDayAndTime() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900]),
              ),
              const SizedBox(height: 10),
            ],
          ),
          const Text(
            '09 h 45 min',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  // Widget untuk menampilkan setiap tugas
  Widget _buildTask({
    required String time,
    required String title,
    required String duration,
    required String priority,
    required String location,
    required IconData icon,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.blue[900]), // Tambahkan warna biru tua untuk teks
          ),
          const SizedBox(height: 5),
          Text(duration),
          Row(
            children: [
              Text(priority),
              const SizedBox(width: 10),
              Text(location),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: TaskPage(),
  ));
}
