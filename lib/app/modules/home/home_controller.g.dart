// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$valueAtom = Atom(name: '_HomeControllerBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$expressionAtom = Atom(name: '_HomeControllerBase.expression');

  @override
  String get expression {
    _$expressionAtom.context.enforceReadPolicy(_$expressionAtom);
    _$expressionAtom.reportObserved();
    return super.expression;
  }

  @override
  set expression(String value) {
    _$expressionAtom.context.conditionallyRunInAction(() {
      super.expression = value;
      _$expressionAtom.reportChanged();
    }, _$expressionAtom, name: '${_$expressionAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void append(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.append(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeOne() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.removeOne();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clean() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.clean();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResult(String result) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setResult(result);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'value: ${value.toString()},expression: ${expression.toString()}';
    return '{$string}';
  }
}
