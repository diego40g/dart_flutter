void main() {
    // Variable permite cambiar el tipo de dato a lo largo del programa
    var changes = "";
    changes = "Hello World";

    // declarar una variable cuyo valor no puede cambiar una vez que se le asigna
    final constant = "Hello World";

    // se convierte en constante despues de la primera asignación
    late final lateConstant;
    lateConstant = "1";

    // Constante que no puede cambiar
    const neverChange = "i can't change";

    String myName = "Diego Paz";

    print("Hola $myName");
    print("Hola ${myName.toUpperCase()}");
    print("1+1 = ${1+1}");
}