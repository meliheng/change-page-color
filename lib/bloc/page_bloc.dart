import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:studycase/bloc/page_event.dart';
import 'package:studycase/bloc/page_state.dart';
import 'package:studycase/screen/page2.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(PageState.initial()) {
    on<ChangeColor>(_changeColorEvent);
    on<NavigateScreen>(_navigateScreen);
  }

  void _changeColorEvent(ChangeColor event, Emitter<PageState> emit) {
    final color =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    state.pageColor = color;
    emit(state.copyWith());
  }

  void _navigateScreen(NavigateScreen event, Emitter<PageState> emit) {
    Navigator.push(
      event.context,
      MaterialPageRoute(
        builder: (context) => const Page2(),
      ),
    );
  }

  void changeTextFieldValue(String value) {
    state.value = value;
    if (state.value.length == 4) {
      add(ChangeColor());
    }
  }
}
