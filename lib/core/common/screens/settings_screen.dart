import 'package:bloc_clean_architecture_template/core/common/bloc/app_settings_cubit.dart';
import 'package:bloc_clean_architecture_template/core/common/entities/entities.dart';
import 'package:bloc_clean_architecture_template/core/extensions/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  static const path = '/settings';
  static const name = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  void _setDarkTheme(bool value){
    context.read<AppSettingsCubit>().setIsDarkThemeState(
      valueIsDarkTheme: value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      body: Center(
        child: ListTile(
          title: Text(
            'Dark theme enabled',
            style: context.textTheme.headlineSmall,
          ),
          trailing: BlocBuilder<AppSettingsCubit, AppSettingEntity>(
            builder: (context, state) {
              return CupertinoSwitch(
                value: state.isDarkTheme,
                onChanged: _setDarkTheme,
              );
            },
          ),
        ),
      ),
    );
  }
}