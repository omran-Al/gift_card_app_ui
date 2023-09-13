import 'package:flutter/material.dart';
import 'package:gift_card_app_ui/presentation/resources/routes_manager.dart';

class RunApps extends StatefulWidget {
  const RunApps({super.key});

  @override
  State<RunApps> createState() => _RunAppsState();
}

class _RunAppsState extends State<RunApps> {
  RouteSettings? settings;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRouters,
      initialRoute: Routes.mainScreen,
    );
  }
}
