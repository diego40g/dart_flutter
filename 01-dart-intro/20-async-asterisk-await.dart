// async vs async*
// The async* function is a generator function that returns a Stream.
// The async function is a function that returns a Future.

void main() {
  emitNumbers().listen((int value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() async* {
  final valueToEmit = [1, 2, 3, 4, 5];
  for (int i in valueToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; // Emit the value
  }
}
