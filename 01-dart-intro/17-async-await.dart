void main() async {
  print('Init of program');

  try {
    final value = await httpGet('dipaz.com');
    print(value);
  } catch (e) {
    print('This is the error: $e');
  }

  print('Ending of program');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  throw 'Error in server';
  //return 'Delayed response from server';
}

// La diferencia de futures y async/await es que con async/await el código es más legible y fácil de entender.

// Init of program
// This is the error: Error in server
// Ending of program
