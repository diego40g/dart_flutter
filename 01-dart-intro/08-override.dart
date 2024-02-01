void main() {
    final superman = Hero(name: 'Clark Kent');

    print(superman.toString());
}

class Hero {
    String name;
    String power;

    Hero({
        required this.name,
        this.power = 'No Power'
    });

    @override
    String toString() {
        return 'Name: $name, Power: $power';
    }
}