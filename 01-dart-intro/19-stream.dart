// The stream is a sequence of asynchronous events.
// It is like a pipe where you can put some data in one end
// and take it out from the other end.
void main() {
  emitNumbers().listen((value) {
    print("Value received: $value");
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    print("Value emitted: $value");
    return value;
  }).take(5);
}

// El stream es como un canal por el que se pueden enviar datos
// este debe tener que escuchar para recibir los datos