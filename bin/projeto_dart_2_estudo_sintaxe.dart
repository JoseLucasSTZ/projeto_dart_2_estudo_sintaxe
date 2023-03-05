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
  1 -- posicionais obrigatórios
  2 -- Nomeados Opcionais
  3 
  */

}
