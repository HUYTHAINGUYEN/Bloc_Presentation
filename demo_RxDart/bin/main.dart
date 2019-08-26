import 'package:rxdart/rxdart.dart';

void main(List<String> args) {
  // demoBehaviorSubject();
  // demoPublishSubject();
  demoReplaySubject();
}

// demoBehaviorSubject() {
//   final subject = new BehaviorSubject<int>();

//   subject.stream.listen(print);

//   subject.add(1);
//   subject.add(2);

//   subject.add(3);

//   subject.stream.listen((value) {
//     print(">>>>> second " + value.toString());
//   });

//   subject.add(4);
//   subject.add(5);
// }

// demoPublishSubject() {
//   final subject = new PublishSubject<int>();

//   subject.stream.listen(print);

//   subject.add(6);
//   subject.add(7);
//   subject.add(8);

//   subject.stream.listen((value) {
//     print(">>>>> second " + value.toString());
//   });

//   subject.add(9);
//   subject.add(10);
// }

demoReplaySubject() {
  final subject = new ReplaySubject<int>();

  subject.stream.listen(print);

  subject.add(11);
  subject.add(12);

  subject.stream.listen((value) {
    print(">>>>> second " + value.toString());
  });

  subject.add(13);
  subject.add(14);
}
