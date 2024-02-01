void main() {
    print(greetEveryone());
    print(arrowGreetEveryone());
    print(addTwoNumbers(5, 10));
    print(optionalAddTwoNumbers(5));
    print(arrowOptionalAddTwoNumbers(5));
}

// Se usa para funciones con más de una línea hasta el return
String greetEveryone() {
    return "Hello Everyone!";
}

// Se usa para funciones con una sola retrun
String arrowGreetEveryone() => "Hello Everyone!";

int addTwoNumbers(int a, int b) => a + b;

// funciones con parametros opcionales
int optionalAddTwoNumbers(int a, [int? b]) {
    b ??= 0;
    return a + b;
}

// función flecha parametros opcionales con valor por defecto
int arrowOptionalAddTwoNumbers(int a, [int b = 0]) => a + b;
