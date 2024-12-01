import 'package:bloc_demo/feature/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
   CounterScreen({super.key});

 final  CounterBloc counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),

      body: BlocBuilder(
        bloc: counterBloc,
        builder: (context, state) {
 switch(state.runtimeType){
  case CounterIncrementState :
    final CounterIncrementState incrementState = state as CounterIncrementState ;

        return  Center(
        child: Text(
        incrementState.value.toString(),
        style: Theme.of(context).textTheme.titleLarge,
        ),
      );

default:
return Container();

 }
      },
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          ConuterIncrementEvent();
        },
        ),
    );
  }
}