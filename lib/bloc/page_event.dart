import 'package:flutter/material.dart';

class PageEvent {}

class ChangeColor extends PageEvent {
  final String input;

  ChangeColor({required this.input});
}

class NavigateScreen extends PageEvent {
  final BuildContext context;

  NavigateScreen({required this.context});
}
