import 'transporte.dart';

class Viagem {
  static String codigoTrabalho ="HSBEM28";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String,dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 0; // está privado
  

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
  }
  void escolheMeioTransporte(Transporte locomocao){
      switch (locomocao){
    case Transporte.carro:
      print("vou de carro");
      break;
    case Transporte.byke:
      print("Vou de byke");
      break;
    case Transporte.onibus:
      print("vou a pé");
      break;
    default:
      print("vou sem veiculo");  
  }

}

  void visitar (String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }  

  void registrarPrecoVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  //metodo que vai retorna o valor de uma propriedade privada
  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }

  //metodo que vai alterar o valor de uma proprieade privada
  void set alterarLocaisVisitados (novaQntd){
    if (novaQntd < 10) {
      _totalLocaisVisitados = novaQntd;
    } else {
      print("não é possivel visitar tantos lugares");
    }
  }
}



  


