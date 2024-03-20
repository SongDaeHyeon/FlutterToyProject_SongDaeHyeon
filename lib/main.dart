import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("ttttoList"),
          ),
          body: Builder(builder: (context) {
            return Center(
              child: ElevatedButton(
                onPressed: () async {
                  final selectDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (selectDate != null) {
                    setState(() {
                      date = selectDate;
                    });
                  }
                },
                child: Text(
                  "${date.year.toString()}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
                ),
              ),
            );
          })),
    );
  }
}
