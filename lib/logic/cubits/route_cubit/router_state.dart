part of 'route_cubit.dart';

@immutable
class RouterState {}
class InitialState extends RouterState {}

class RouteChangedState extends RouterState {
  final String routeName;
  RouteChangedState(this.routeName);
}
class RouteNotChangedState extends RouterState {
  final String error;
  RouteNotChangedState(this.error);
}
