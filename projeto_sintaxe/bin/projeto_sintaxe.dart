import 'transporte.dart';
import 'viagem.dart';
void main() {
 
  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
  
  viagemMaio.visitar("Museu");
  

  viagemMaio.alterarLocaisVisitados = 9;

  print(viagemMaio.consultarTotalLocaisVisitados);
}
