import 'package:flutter/material.dart';

class PageEvent {}

class ChangeColor extends PageEvent {}

class NavigateScreen extends PageEvent {
  final BuildContext context;

  NavigateScreen({required this.context});
}
