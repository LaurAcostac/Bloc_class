import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wifi_bloc_class/app/presentation/bloc/wifi/wifi_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<WifiBloc, WifiState>(
            builder: (context, state){
              if(state is WifiConnected){
                return const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text('Wifi connected'),
                   Icon(Icons.wifi, color: Colors.green,)
                  ],
                );
              }else if(state is WifiDisconnected){
              return const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Wifi disconnected'),
              Icon(Icons.wifi, color: Colors.pinkAccent,)
              ],
              );
              }else{
                return const CircularProgressIndicator();
              }
            }
        ),
      ),

    );
  }
}
