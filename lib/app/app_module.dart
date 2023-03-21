import 'package:code_hero/app/home/presentation/controllers/home_controller.dart';
import 'package:code_hero/app/home/home_module.dart';
import 'package:code_hero/app/home/repositories/home_repository.dart';
import 'package:code_hero/app/splash_screen/splash_screen_module.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController(HomeRepositoryImp(Dio()))),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashScreenModule()),
    ModuleRoute('/home/', module: HomeModule()),
  ];
}
