import 'dart:async';

void main() {
  //
  // Initialize a "Broadcast" Stream controller of integers
  //
  final StreamController<int> ctrl = StreamController<int>.broadcast();

  //
  // Initialize a single listener which filters out the odd numbers and
  // only prints the even numbers
  //
  final StreamSubscription subscription = ctrl.stream
      .where((value) => (value % 2 == 0))
      .listen((value) => print('$value'));

  // final StreamSubscription subscription_ct = ctrl.stream.listen((data) => print('$data' + " cong chuoi"));

  //
  // here add the data that will flow inside the stream
  //
  for (int i = 1; i < 11; i++) {
    ctrl.sink.add(i);
  }

  //
  // release the StreamController
  //
  ctrl.close();
}
