import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:studycase/bloc/page_event.dart';
import 'package:studycase/bloc/page_state.dart';
import 'package:studycase/screen/page2.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc()
      : super(
          PageState(pageColor: Colors.white),
        ) {
    on<ChangeColor>(_changeColorEvent);
    on<NavigateScreen>(_navigateScreen);
  }

  void _changeColorEvent(ChangeColor event, Emitter<PageState> emit) {
    if (event.input.length == 4) {
      final color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0);
      emit(state.copyWith(pageColor: color));
    }
  }

  void _navigateScreen(NavigateScreen event, Emitter<PageState> emit) {
    Navigator.push(
      event.context,
      MaterialPageRoute(
        builder: (context) => const Page2(),
      ),
    );
  }
}
