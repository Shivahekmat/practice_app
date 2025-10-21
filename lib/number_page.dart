import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_app/cubit/number_page/number_counter_cubit.dart';
import 'package:practice_app/cubit/number_page/number_counter_state.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            spacing: 70,
            children: [
              SizedBox(height: 70),
              BlocBuilder<NumberCounterCubit, NumberCounterState>(
                builder: (context, state) {
                  return Text(
                    '${state.number}',
                    style: TextStyle(fontSize: 30),
                  );
                },
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<NumberCounterCubit>().plusNumber();
                },
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<NumberCounterCubit>().minusNumber();
                },
                child: Icon(Icons.exposure_minus_1),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<NumberCounterCubit>().resetNumber();
                },
                child: Icon(Icons.reset_tv),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
