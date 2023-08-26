part of 'wifi_bloc.dart';

@immutable
abstract class WifiState {}

class WifiInitial extends WifiState {}

class WifiConnected extends WifiState{}

class WifiDisconnected extends WifiState{}