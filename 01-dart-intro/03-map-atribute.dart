void main() {
    final Map<String, dynamic>pokemon = {
        'name': 'Ditto',
        'hp':100,
        'isAlive': true,
        'abilities': <String>['Transform', 'Impersonate', 'Morph'],
        // Otra forma de declarar un mapa
        'sprites': <int,String>{
            1:'ditto.png', 
            2:'ditto.gif', 
            3:'ditto.jpg'
        },
    };
    final pokemons = {
        'Ditto': {
            'name': 'Ditto',
            'hp':100
        },
        'Pikachu': {
            'name': 'Pikachu',
            'hp':100
        }
    };

    final pokemonMapNumber = {
        1: {
            'name': 'Ditto',
            'hp':100
        },
        2: {
            'name': 'Pikachu',
            'hp':100
        }
    };

    print(pokemon.runtimeType);
    print(pokemons.runtimeType);
    print(pokemonMapNumber.runtimeType);

    // Obtener datos
    print("Name: ${pokemon['name']}");
    print("Sprites: ${pokemon['sprites']}");
    print("First Sprite: ${pokemon['sprites'][1]}");
    print("Second Sprites: ${pokemon['sprites'][2]}");
    print("Third Sprites: ${pokemon['sprites'][3]}");
}