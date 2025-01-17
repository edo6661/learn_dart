const oneSecond = Duration(seconds: 1);

Future<T> returnWithDelay<T>(T val) async {
  await Future.delayed(oneSecond);
  return val;
}

Future<void> printWithDelay<T>(T val) {
  return Future.delayed(oneSecond).then((_) {
    print(val);
  });
}

main() async {
  print('Start');
  print(await returnWithDelay('Hello'));
  await printWithDelay('World');
  print('Done');
}
