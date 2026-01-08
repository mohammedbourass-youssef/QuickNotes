import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/ThemeCubit/Theme_Cubit.dart';
import 'package:notepad_app/Cubits/ThemeCubit/Theme_State.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.home = false,
  });
  final VoidCallback onPressed;
  final Icon icon;
  final bool home;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: state is ThemeDark ? Colors.grey[900] : Colors.grey[400],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              IconButton(onPressed: onPressed, icon: icon),
              home ? SizedBox(width: 10) : SizedBox(),
              home
                  ? IconButton(
                      onPressed: () {
                        if (state is ThemeDark) {
                          BlocProvider.of<ThemeCubit>(
                            context,
                          ).ChangeTheme(ThemeLight());
                        } else {
                          BlocProvider.of<ThemeCubit>(
                            context,
                          ).ChangeTheme(ThemeDark());
                        }
                      },
                      icon: Icon(
                        state is ThemeDark ? Icons.light_mode : Icons.dark_mode,
                      ),
                    )
                  : Container(),
            ],
          ),
        );
      },
    );
  }
}
