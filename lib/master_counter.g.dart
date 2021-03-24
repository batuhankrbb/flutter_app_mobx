// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MasterCounter on _MasterCounter, Store {
  Computed<String> _$counterTextComputed;

  @override
  String get counterText =>
      (_$counterTextComputed ??= Computed<String>(() => super.counterText,
              name: '_MasterCounter.counterText'))
          .value;

  final _$counterValueAtom = Atom(name: '_MasterCounter.counterValue');

  @override
  int get counterValue {
    _$counterValueAtom.reportRead();
    return super.counterValue;
  }

  @override
  set counterValue(int value) {
    _$counterValueAtom.reportWrite(value, super.counterValue, () {
      super.counterValue = value;
    });
  }

  final _$alternativeCounterValueAtom =
      Atom(name: '_MasterCounter.alternativeCounterValue');

  @override
  int get alternativeCounterValue {
    _$alternativeCounterValueAtom.reportRead();
    return super.alternativeCounterValue;
  }

  @override
  set alternativeCounterValue(int value) {
    _$alternativeCounterValueAtom
        .reportWrite(value, super.alternativeCounterValue, () {
      super.alternativeCounterValue = value;
    });
  }

  final _$oldCounterValuesAtom = Atom(name: '_MasterCounter.oldCounterValues');

  @override
  ObservableList<int> get oldCounterValues {
    _$oldCounterValuesAtom.reportRead();
    return super.oldCounterValues;
  }

  @override
  set oldCounterValues(ObservableList<int> value) {
    _$oldCounterValuesAtom.reportWrite(value, super.oldCounterValues, () {
      super.oldCounterValues = value;
    });
  }

  final _$ekrandaGozukenMesajAtom =
      Atom(name: '_MasterCounter.ekrandaGozukenMesaj');

  @override
  String get ekrandaGozukenMesaj {
    _$ekrandaGozukenMesajAtom.reportRead();
    return super.ekrandaGozukenMesaj;
  }

  @override
  set ekrandaGozukenMesaj(String value) {
    _$ekrandaGozukenMesajAtom.reportWrite(value, super.ekrandaGozukenMesaj, () {
      super.ekrandaGozukenMesaj = value;
    });
  }

  final _$_MasterCounterActionController =
      ActionController(name: '_MasterCounter');

  @override
  void increaseCounter() {
    final _$actionInfo = _$_MasterCounterActionController.startAction(
        name: '_MasterCounter.increaseCounter');
    try {
      return super.increaseCounter();
    } finally {
      _$_MasterCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counterValue: ${counterValue},
alternativeCounterValue: ${alternativeCounterValue},
oldCounterValues: ${oldCounterValues},
ekrandaGozukenMesaj: ${ekrandaGozukenMesaj},
counterText: ${counterText}
    ''';
  }
}
