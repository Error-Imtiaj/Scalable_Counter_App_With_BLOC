part of 'counter_bloc_bloc.dart';

@immutable
sealed class CounterBlocEvent {}

final class IncreaseCounterEvent extends CounterBlocEvent {}

final class DecreaseCounterEvent extends CounterBlocEvent {}

final class ResetCounterEvent extends CounterBlocEvent{}
