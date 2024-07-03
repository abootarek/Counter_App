import 'package:basketball_counter_app/bussneis_logic/cuibt/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/ui/widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CounterTeam());
}

class CounterTeam extends StatelessWidget {
  const CounterTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
