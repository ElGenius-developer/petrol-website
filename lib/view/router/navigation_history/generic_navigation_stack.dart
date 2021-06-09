 import 'dart:collection';

import 'package:flutter/material.dart';

part 'navigation_stack.dart';
part 'custom_navigation_observer.dart';
abstract class _NavStack<T> {
  void push(T val) {}
  void  pop() {}
  T top();
  List<T>get fetchAll;
  void get clear {}
}