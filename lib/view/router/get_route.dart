part of 'app_router.dart';

Route getRoute(Widget child, String name) {
  return
    _FadeRoute(child, settings: RouteSettings(name: name));
}

class _FadeRoute extends PageRouteBuilder {
  final Widget? child;
  final RouteSettings settings;
  _FadeRoute(this.child, {required this.settings})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => child!,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
          settings: settings,
        );
}
