import 'dart:math';
import 'package:test_task_design/view/toast/toast_notification.dart';
import 'package:flutter/material.dart';

class ToastNotification extends StatefulWidget {
  const ToastNotification({super.key});

  @override
  State<ToastNotification> createState() => _ToastNotificationState();
}

class _ToastNotificationState extends State<ToastNotification> {
  List<int> numbers = List.generate(9, (index) => index + 1);

  void _shuffleNumbers() {
    setState(() {
      numbers.shuffle(Random());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shuffle Grid Numbers'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    numbers[index].toString(),
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _shuffleNumbers,
            child: const Text('Shuffle Numbers'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _shuffleNumbers,
            child: const Text('Shuffle Numbers'),
          ),
          BackButton(
            onPressed: (){},
         color: Colors.cyan,
          )
        ],
      ),
    );
  }
}



