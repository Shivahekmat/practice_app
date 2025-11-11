import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_app/cubit/number_page/number_counter_cubit.dart';
import 'package:practice_app/number_page.dart';
import 'package:practice_app/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NumberCounterCubit(),
        child: RegisterScreen(),
      ),
    );
  }
}
