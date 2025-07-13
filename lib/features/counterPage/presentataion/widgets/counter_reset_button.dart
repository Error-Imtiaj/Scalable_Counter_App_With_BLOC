import 'package:counter/features/counterPage/bloc/bloc/counter_bloc_bloc.dart';
import 'package:flutter/material.dart';

class CounterResetButton extends StatelessWidget {
  const CounterResetButton({
    super.key,
    required this.counterBloc,
  });

  final CounterBlocBloc counterBloc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        counterBloc.add(ResetCounterEvent());
      },
      style: Theme.of(context).elevatedButtonTheme.style,
      child: Text(
        "Reset",
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
