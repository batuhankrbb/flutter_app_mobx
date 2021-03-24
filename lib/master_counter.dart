import 'package:mobx/mobx.dart';

part 'master_counter.g.dart';

class MasterCounter = _MasterCounter with _$MasterCounter;

abstract class _MasterCounter with Store {
  @observable
  int counterValue = 0;

  @observable
  int alternativeCounterValue = 0;

  @observable
  ObservableList<int> oldCounterValues = ObservableList<int>();

  ObservableFuture<String> myFuture = ObservableFuture(
    Future.delayed(
      Duration(seconds: 2),
    ).then((value) {
      return "İNTERNETTEN GELEN VERİ";
    }),
  );

  List<ReactionDisposer> _disposers;

  void setup() {
    _disposers = [
      reaction<int>((_) => counterValue, (yeniDeger) {
        print("$yeniDeger");
        ekrandaGozukenMesaj = "$yeniDeger";
      })
    ];
  }

  dispose() {
    _disposers.forEach((reactionDispos) {
      reactionDispos();
    });
  }

  @observable //ekranda gösterdiğimi varsaydığım için observable yaptım.
  String ekrandaGozukenMesaj =
      ""; //bunu computed da yapabilirdik ama reactionsları göstermek istedim

  @action
  void increaseCounter() {
    oldCounterValues.add(counterValue);
    counterValue += 1;
  }

  void setMessage() {
    print("ALTERNATİF GÜNCELLENDİ");
  }

  @computed
  String get counterText {
    return "ABOO $counterValue KADAR BASMIŞSIN";
  }
}
