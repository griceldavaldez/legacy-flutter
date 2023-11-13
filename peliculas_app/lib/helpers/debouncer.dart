import 'dart:async';
// Creditos
// https://stackoverflow.com/a/52922130/7834829

class Debouncer<T> {

  final Duration duration;

  Debouncer({ 
    required this.duration, 
    this.onValue 
  });

  void Function(T value)? onValue;

  T? _value;
  Timer? _timer;
  
  T get value => _value!;

  set value(T val) {
    _value = val;
    _timer?.cancel();
    _timer = Timer(duration, () => onValue!(_value!));
  }  
}