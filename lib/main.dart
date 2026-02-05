import 'package:bloc_clean_architecture_template/bootstrap.dart';
import 'package:bloc_clean_architecture_template/core/common/bloc/app_settings_cubit.dart';
import 'package:bloc_clean_architecture_template/core/common/entities/entities.dart';
import 'package:bloc_clean_architecture_template/core/injection/injection.dart';
import 'package:bloc_clean_architecture_template/core/router/router.dart';
import 'package:bloc_clean_architecture_template/core/services/app_constants.dart';
import 'package:bloc_clean_architecture_template/core/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await bootstrap(() => const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //bloc for app setting
        BlocProvider(create: (context) => sl<AppSettingsCubit>()),
      ],
      child: BlocBuilder<AppSettingsCubit, AppSettingEntity>(
        builder: (context, state) {
          return MaterialApp.router(
            title: AppConstants.appName,
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.routerConfig,
            theme: state.isDarkTheme
                ? appThemeData[AppTheme.dark]
                : appThemeData[AppTheme.light],
          );
        },
      ),
    );
  }
}
