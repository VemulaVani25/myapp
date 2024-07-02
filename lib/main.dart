import 'package:flutter/material.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> exercises = [
    'Push-ups',
    'Sit-ups',
    'Squats',
    'Jumping Jacks',
    'Plank',
    'Lunges',
    'Burpees',
    'Crunches',
    'Mountain Climbers',
    'High Knees',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(exercises[index]),
            onTap: () {
              // Navigate to exercise detail or tracker screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseDetailScreen(exerciseName: exercises[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ExerciseDetailScreen extends StatelessWidget {
  final String exerciseName;

  ExerciseDetailScreen({required this.exerciseName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exerciseName),
      ),
      body: Center(
        child: Text(
          'Track your $exerciseName exercise here!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}