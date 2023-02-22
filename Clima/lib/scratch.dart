import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete with $result');
}

Future<String> task2() async {
  String myvar = 'abc';
  Duration D;
  try {
    D = Duration(seconds: int.parse(myvar));
    sleep(D);
  } catch (e) {
    print(e);
    D = Duration(seconds: 7);
    sleep(D);
  }

  String result;

  await Future.delayed(D, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
  print('Task 3 complete with $result');
}
