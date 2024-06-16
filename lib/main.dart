import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/providers/form_provider.dart';
import 'package:task_app/screens/home_screen.dart';
import 'package:task_app/screens/list_task_screen.dart';
import 'package:task_app/screens/new_task_screen.dart';
import 'package:task_app/screens/report_task_screen.dart';
import 'package:task_app/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FormProvider(),)
      ],
      child: MaterialApp(
        title: 'Task App',
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/home':(context) => const HomeScreen(),
          '/new_task':(context) => const NewTaskScreen(),
          '/list_task':(context) => const ListTaskScreen(),
          '/report_task':(context) => const ReportTaskScreen(),
      
        },
        theme: AppTheme.lightTheme,
      ),
    );
  }
}