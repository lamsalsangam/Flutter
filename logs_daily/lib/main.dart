import 'package:flutter/material.dart';
import 'package:logs_daily/model/log_entry.dart';

void main() {
  runApp(LoggingApp());
}

class LoggingApp extends StatelessWidget {
  final List<LogEntry> logs = [];

  void addLog(String message) {
    final logEntry = LogEntry(DateTime.now(), message);
    logs.add(logEntry);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logs Daily',
      home: LoggingScreen(
        logs: logs,
        addLog: addLog,
      ),
    );
  }
}

class LoggingScreen extends StatefulWidget {
  final List<LogEntry> logs;
  final void Function(String) addLog;

  LoggingScreen({required this.logs, required this.addLog});

  @override
  _LoggingScreenState createState() => _LoggingScreenState();
}

class _LoggingScreenState extends State<LoggingScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Logs Daily'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.logs.length,
              itemBuilder: (context, index) {
                final logEntry = widget.logs[index];
                return ListTile(
                  title: Text(logEntry.message),
                  subtitle: Text(logEntry.timestamp.toString()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Enter log message',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    if (_textEditingController.text.trim().isNotEmpty) {
                      widget.addLog(_textEditingController.text);
                      _textEditingController.clear();
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
