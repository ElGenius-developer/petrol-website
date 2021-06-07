part of 'app_router.dart';

Route getRoute(RoutersModel model) {
  return CupertinoPageRoute(
    builder: (context) => model.page!,
    settings: RouteSettings(name: model.route),
  );
}
