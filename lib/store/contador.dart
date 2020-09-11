import 'package:mobx/mobx.dart';
part 'contador.g.dart';

class Contador = _Contador with _$Contador;

abstract class _Contador with Store {
  @observable
  int valor = 0;

  @observable
  String nome = 'Flutter Fiap';

  @action
  adicionar() {
    this.valor++;
    this.nome = 'Flutter Fiap $valor';
  }

  @action
  alterar() {
    this.nome = 'Alterando';
  }
}
