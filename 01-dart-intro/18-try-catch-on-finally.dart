void main() async {
  print("Init of the main function");

  try {
    final value = await httpGet();
    print("Success: $value");
  } on Exception catch (e) {
    print("Was a exception: $e");
  } catch (e) {
    print("Was a terrible error: $e");
  } finally {
    print("Finally try block");
  }

  print("End of the main function");
}

Future<String> httpGet() async {
  await Future.delayed(const Duration(seconds: 3));
  //throw Exception("Don't have parameters on url"); //error controlado
  //throw "Error in server"; //error no controlado
  return "Delayed response from server";
}
