part of 'generic_navigation_stack.dart';

class NavigationStack<T> implements _NavStack {
  final ListQueue<T> historyQueue = ListQueue();

  //clear the stack
  @override
  void get clear => historyQueue.clear();

  //get all data of the list
  @override
  List<T> get fetchAll => historyQueue.toList();

  //remove last element of the stack
  @override
  void   pop() => historyQueue.removeLast();

  //add new value to the top of the stack .
  @override
  void push(val) {
    if(val!=null)
    historyQueue.addLast(val);
  }

  //return the last top or last value of the stack
  @override
  top() => historyQueue.last;
}
