import 'package:code_hero/app/home/entities/character_model.dart';
import 'package:code_hero/app/home/presentation/controllers/home_controller.dart';
import 'package:code_hero/app/home/presentation/widgets/home_desktop_widget.dart';
import 'package:code_hero/app/home/presentation/widgets/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final HomeController controller = Modular.get();
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return FutureBuilder<List<CharacterModel>>(
      future: controller.getCharacters(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            color: Colors.white,
            child: const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          return desktop ? const HomeDesktopWidget() : const HomeWidget();
        }

        if (snapshot.hasError) {
          return const Center(
            child: Text("Falha ao carregar dados"),
          );
        }

        return Container();
      },
    );
  }
}