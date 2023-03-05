import 'package:projeto_dart_2_estudo_sintaxe/projeto_dart_2_estudo_sintaxe.dart'
    as projeto_dart_2_estudo_sintaxe;

void main() {
  bool funcEstaMadura(int dias) {
    if (dias >= 30) {
      return true;
    } else {
      return false;
    }
  }

  // no Dart não se usa o termo function para criar uma função

  String nomeFruta = 'Laranja';
  double peso = 100.2;
  String corFruta = 'Doce e cítrica';
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);
  print(funcEstaMadura(40));

  /* Há 4 tipos de parâmetros nas funções em Dart:
  1 -- Posicionais obrigatórios - A ordem de inclusão na função faz diferença
  2 -- Nomeados Opcionais - Podem ou não ser incluídos na função
  3 -- Parâmetros com "Padrão" - O parâmetro recebe um padrão
  4 -- Modificador "required" - se coloca o modificador required para obrigar a passagen
                                 do parâmetro que antes era opcional
  */

  mostrarMadura(String fruta, int dias,
      {required String cor, int quantidade = 10}) {
    if (dias >= 30) {
      print('A $fruta está madura');
    } else {
      print('A $fruta não está madura');
    }
    print(cor);
    print(quantidade);
  }

  /* Não esquecer que Dart possui o null Safety. Assim, para aceitar parâmetros nulos deve-se usar
   "String?", "int?" e assim por diante */
  // O parâmetro opcional deve ser passado com seu nome

  mostrarMadura('uva', 40, cor: 'vermelha');

  // classes sempre começam com letra maiúscula

  Fruta fruta01 = Fruta('morango', 100, 'Vermelho', 'Cítrico', 40);
  print(fruta01.Nome);
  print(fruta01);

  fruta01.mostrarFruta();
  print('-----');
  fruta01.mostrarMadura();
}

class Fruta {
  String Nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  int? quantidade;
  String sabor;
  bool?
      isMadura; // o interrogação é para dizer que a variável pode ser nula, senão o null safety age

  Fruta(this.Nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura}); // as informações sobre parâmetros se aplicam aqui também

  mostrarMadura() {
    if (this.diasDesdeColheita >= 30) {
      print('Fruta Madura');
    } else
      print('Fruta não madura');
  }

  mostrarFruta() {
    print("O Nome da fruta é " + this.Nome);
    print("O peso  da fruta é $peso");
    print("A cor da fruta é " + this.cor);
    print("a dia foi colhida há $diasDesdeColheita dias");
    print("O sabor da fruta é " + this.sabor);
  }
}
