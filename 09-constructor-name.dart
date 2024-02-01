void main(){
    final ironmain = Hero(
        isAlive: false,
        name: 'Tony Stark', 
        power: 'Money'
    );
    final Map<String, dynamic> rawJson = {
        'name': 'Peter Parker',
        'power': 'Sticky hands',
        'isAlive': true
    };
    final spiderman = Hero.fromJson(rawJson);

    print(ironmain.toString());
    print(spiderman.toString());
}

class Hero {
    String name;
    String power;
    bool isAlive;

    Hero({
        required this.name,
        required this.power,
        required this.isAlive
    });

    Hero.fromJson(Map<String, dynamic> json)
        : name = json['name'] ?? 'No name found',
          power = json['power'] ?? 'No power found',
          isAlive = json['isAlive'] ?? 'No isAlive found';

    @override
    String toString() {
        return '$name, $power, is alive: ${isAlive ? 'YES!': 'NOPE!'}';
    }
}