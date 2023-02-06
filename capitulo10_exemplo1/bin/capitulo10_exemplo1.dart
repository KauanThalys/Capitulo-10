import 'dart:async';
void main () {
  print('Início main()');
  Timer.run(() => print('Event loop 1'));
  Timer.run(() {
    scheduleMicrotask(() => print('Microtask 3'));
    print('Event loop 2');
  });
  scheduleMicrotask(() => print('Microtask 1'));
  Timer.run(() => print('Event loop 3'));
  scheduleMicrotask(() => print('Microtask 2'));
  print('Fim main()');
}