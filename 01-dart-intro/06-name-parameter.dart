void main() {
    print(greetEveryone(name: 'John'));
    print(greetEveryone(name: 'John', message: 'Hello'));
}

String greetEveryone({required String name, String? message, String error='Mensaje de vacio '}) {
    if (message != null) {
        return "message: $message $name";
    } else {
        return "name: $name, error: $error";
    }
}