import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int value = 0;

  @observable
  String expression = '';

  @action 
  void append(String value) {
    if(!(expression.contains('.') && value == '.')) {
      expression += value;
    }
  }

  @action
  void removeOne() => expression = expression.substring(0, expression.length-1);

  @action
  void clean() => this.setResult('');

  @action
  void setResult(String result) => expression = result;

  @action
  void increment() {
    value++;
  }
}
