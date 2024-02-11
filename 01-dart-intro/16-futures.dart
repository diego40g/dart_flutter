void main() {
  print('Init of program');
  httpGet('http://dipaz.com').then((value) {
    print(value);
  }).catchError((error) {
    print('Error: $error');
  });
  print('Ending of program');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 3), () {
    throw 'Error in server';
    //return 'Delayed response from server';
  });
}
