import 'package:cadence/core/widgets/empty_state.dart';
import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks')),
      body: const EmptyState(
        icon: Icons.check_circle_outline,
        title: 'No tasks yet',
        message: 'Tasks you add will show up here.',
      ),
    );
  }
}
