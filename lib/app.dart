import 'package:counter/core/utils/app_theme.dart';
import 'package:counter/features/counter/bloc/counter_bloc_bloc.dart';
import 'package:counter/features/counter/presentataion/screens/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TODO CONSTRUTOR CREATED

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 914),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => CounterBlocBloc()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Counter App',
            themeMode: ThemeMode.system,
            theme: AppTheme.lightTheme(context),
            darkTheme: AppTheme.darkTheme(context),
            home: child,
          ),
        );
      },
      child: const CounterPage(),
    );
  }
}
