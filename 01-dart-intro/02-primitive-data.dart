void main() {
  final String pokemon = 'Ditto';
  final int helpPoint = 10;
  final bool isAlive = true;
  final List<String> abilities = <String>['Transform', 'Impersonate', 'Morph'];
  //final abilities = ['Transform', 'Impersonate', 'Morph']
  //final abilities = <String>['Transform', 'Impersonate', 'Morph']
  final List<String> sprites = ['ditto.png', 'ditto.gif', 'ditto.jpg'];

  // No es necesario el ? para dynamic por que la tiene ese atributo
  dynamic errorMessage = "Ditto doesn't have any abilities";
  errorMessage = true;
  errorMessage = 10;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true; //funcion anonima de una sola linea
  errorMessage = () {
    return true;
  }; //funcion anonima de varias lineas
  errorMessage = null;
  //errorMessage +=1;//Debe ser error porque no se suma 1 a un null

  print("""
        $pokemon
        $helpPoint
        $isAlive
        $abilities
        $sprites
    """);
}
