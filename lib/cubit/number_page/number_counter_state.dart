import 'package:equatable/equatable.dart';

class NumberCounterState extends Equatable {
  final int number;

  const NumberCounterState({this.number = 0});

  NumberCounterState copyWith({int? number}) {
    return NumberCounterState(number: number ?? this.number);
  }

  @override
  List<Object?> get props => [number];
}
