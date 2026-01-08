import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notepad_app/Constants.dart';
import 'package:notepad_app/Cubits/NotesCubit/Notes_Cubit.dart';
import 'package:notepad_app/Cubits/SampleBlocObserver.dart';
import 'package:notepad_app/Cubits/ThemeCubit/Theme_Cubit.dart';
import 'package:notepad_app/Cubits/ThemeCubit/Theme_State.dart';
import 'package:notepad_app/Models/NotesModal.dart';
import 'package:notepad_app/views/HomePage.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NotesmodalAdapter());
  await Hive.openBox<Notesmodal>(kNotesBox);

  Bloc.observer = SampleBlocObserver();
  runApp(const notesApp());
}

class notesApp extends StatelessWidget {
  const notesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotesCubit()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Notes App',
            theme: ThemeData(
              brightness: state is ThemeDark
                  ? Brightness.dark
                  : Brightness.light,
              fontFamily: 'Poppins',
            ),
            home: const Homepage(),
          );
        },
      ),
    );
  }
}
