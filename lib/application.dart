import 'package:cat_facts/bloc/cat_fact_bloc/cat_fact_bloc.dart';
import 'package:cat_facts/config/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Application extends StatefulWidget {
  const Application();
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with WidgetsBindingObserver {
  AppRouter get _router => RouteService.instance;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CatFactBloc(),
        ),
      ],
      child: MaterialApp.router(
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.0,
            ),
            child: child!,
          );
        },
        debugShowCheckedModeBanner: false,
        routerDelegate: _router.delegate(),
        routeInformationParser: _router.defaultRouteParser(),
      ),
    );
  }
}
