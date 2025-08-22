import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskDetailScreen extends StatelessWidget {
  final Task task;
  final Function(Task) onUpdate;
  final VoidCallback onDelete;

  const TaskDetailScreen({
    super.key,
    required this.task,
    required this.onUpdate,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              task.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Description
            Text(
              task.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Completed Status
            Row(
              children: [
                const Text(
                  "Completed:",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(width: 10),
                Icon(
                  task.isCompleted ? Icons.check_circle : Icons.cancel,
                  color: task.isCompleted ? Colors.green : Colors.red,
                  size: 28,
                )
              ],
            ),
            const Spacer(),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Mark Complete / Incomplete
                ElevatedButton.icon(
                  onPressed: () {
                    final updatedTask =
                        task.copyWith(isCompleted: !task.isCompleted);
                    onUpdate(updatedTask);
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    task.isCompleted ? Icons.undo : Icons.check,
                  ),
                  label: Text(task.isCompleted
                      ? "Mark Incomplete"
                      : "Mark Complete"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                ),

                // Delete Button
                ElevatedButton.icon(
                  onPressed: () {
                    onDelete();
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.delete),
                  label: const Text("Delete"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

