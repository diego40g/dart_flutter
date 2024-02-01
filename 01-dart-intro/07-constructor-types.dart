void main(){
    final wolverine = new Hero('Logan','Regeneración');
    print(wolverine.name);
    print(wolverine.power);
}

class Hero {
    String name;
    String power;


    // Constructor instancia controlada
    Hero(String pName, String pPower)
    :this.name = pName, 
    power = pPower;

    // Constructor con inicializadores de lista
    //Hero(this.name, this.power);

    // Constructor con parámetros nombrados
    // Hero({required this.name, required this.power});

    // Constructor normal
    /*Hero(String name, String power) {
        this.name = name;
        this.power = power;
    }*/
}