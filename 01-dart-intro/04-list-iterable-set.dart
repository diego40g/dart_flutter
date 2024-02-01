// LIST = []
// ITERABLE = ()
// SET = {}

void main() {
    final numbers = [1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 5];


    print("Tipo de dato: ${numbers.runtimeType}");
    print("Total de elementos lista: ${numbers.length}");
    print("Index 0: ${numbers[0]}");
    print("First: ${numbers.first}");
    print("Last: ${numbers.last}");
    print("Lista de numeros: $numbers");
    print("Lista de numeros alreves: ${numbers.reversed}");

    final reversedNumber = numbers.reversed;
    final reversedList = reversedNumber.toList();
    print("Lista de numeros alreves: ${reversedNumber.runtimeType}");
    print("Lista de numeros alreves: ${reversedList.runtimeType}");
    print("Lista de numeros alreves: $reversedNumber");
    print("Lista de numeros alreves: $reversedList");

    // No hay valores duplicados
    final setNumbers = numbers.toSet();
    final setNumbersList = setNumbers.toList();
    print("Lista de numeros sin duplicados: $setNumbers");
    print("Lista de numeros sin duplicados: $setNumbersList");
    print("Lista de numeros sin duplicados: ${setNumbers.runtimeType}");
    print("Lista de numeros sin duplicados: ${setNumbersList.runtimeType}");

    final numbersGreaterThanTwo = numbers.where((int number) => number > 2);
    final numbersGreaterThanThree = numbers.where((int number) {return number > 3;});
    print("Numeros mayores a 2: $numbersGreaterThanTwo");
    print("Numeros mayores a 2: ${numbersGreaterThanTwo.toSet()}");
    print("Numeros mayores a 3: $numbersGreaterThanThree");
    print("Numeros mayores a 3: ${numbersGreaterThanThree.toSet()}");
}