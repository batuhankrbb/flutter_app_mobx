import 'package:flutter/material.dart';
import 'package:flutter_app_mobx/master_counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var counterViewModel = MasterCounter();

  @override
  void initState() {
    super.initState();
    counterViewModel.setup();
  }

  @override
  void dispose() {
    counterViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      floatingActionButton: buildFloatingActionButton(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Butona Şu Kadar Bastın:",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          Observer(builder: (_) {
            return Text(
              "${counterViewModel.counterValue}",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            );
          }),
          Observer(
            builder: (_) {
              return SizedBox(
                height: 300,
                width: 500,
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return Text(
                        "${counterViewModel.oldCounterValues[index]}  ");
                  },
                  itemCount: counterViewModel.oldCounterValues.length,
                ),
              );
            },
          ),
          // ignore: missing_return
          Observer(builder: (_) {
            switch (counterViewModel.myFuture.status) {
              case FutureStatus.rejected:
                return Text("HATA VAR");
              case FutureStatus.pending:
                return CircularProgressIndicator();
              case FutureStatus.fulfilled:
                return Text(counterViewModel.myFuture.value);
            }
          })
        ],
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      backgroundColor: Colors.blue,
      onPressed: () {
        counterViewModel.increaseCounter();
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("MobX Test"),
    );
  }
}
