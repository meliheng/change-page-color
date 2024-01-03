import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studycase/bloc/page_bloc.dart';
import 'package:studycase/bloc/page_event.dart';
import 'package:studycase/bloc/page_state.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
      bloc: context.read<PageBloc>(),
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.pageColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    onChanged: (value) {
                      context.read<PageBloc>().changeTextFieldValue(value);
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<PageBloc>()
                        .add(NavigateScreen(context: context));
                  },
                  child: const Text('Change Page'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
