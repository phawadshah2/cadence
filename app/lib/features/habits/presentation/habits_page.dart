import 'package:cadence/core/widgets/empty_state.dart';
import 'package:flutter/material.dart';

class HabitsPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Habits')),
      body: const EmptyState(
        icon: Icons.repeat,
        title: 'No habits yet',
        message: 'Habits you start tracking will show up here.',
      ),
    );
  }
}
