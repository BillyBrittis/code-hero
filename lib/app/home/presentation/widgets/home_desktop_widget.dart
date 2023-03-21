
import 'package:code_hero/app/global/styles/styles.dart';
import 'package:code_hero/app/home/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:number_pagination/number_pagination.dart';

class HomeDesktopWidget extends StatefulWidget {
  const HomeDesktopWidget({super.key});

  @override
  State<HomeDesktopWidget> createState() => _HomeDesktopWidgetState();
}

class _HomeDesktopWidgetState extends State<HomeDesktopWidget> {

  final HomeController controller = Modular.get();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Observer(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Padding(
              padding: EdgeInsets.only(left: size.width * .04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'BUSCA', style: fontStyleH1DesktopUnderline),
                        TextSpan(text: ' MARVEL', style: fontStyleH1Desktop),
                        TextSpan(text: ' TESTE FRONT-END', style: fontStyleH2Desktop),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * .038),
                    child: const Text('Billy Pisso Brittis', style: fontStyleH2Desktop,),
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width * .05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Nome do Personagem', style: fontStyleH3Desktop,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: size.width * .4,
                          height: size.height * .062,
                          child: TextField(
                            controller: controller.searchCharacterInput,
                            onSubmitted: (value) async {
                              controller.searchCharacterInput.text = value;
                              await controller.searchCharacter(name: value);
                            },
                            decoration: InputDecoration(
                              suffixIcon: controller.searchCharacterInput.text.isNotEmpty 
                              ? IconButton(
                                  onPressed: (() {
                                    controller.getCharacters();
                                  }), 
                                  icon: const Icon(Icons.close)
                                ) 
                              : null,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1, color: Colors.grey,
                                ), 
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1, color: Colors.grey
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),  
                SizedBox(height: size.height * .018,),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.width * .05),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: size.width * .25,
                          height: size.height * .0625,
                          color: const Color(0xFFD42026),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: size.width * .01),
                              child: const Text('Personagem', style: TextStyle(color: Colors.white),),
                            )
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * .01),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: size.width * .25,
                          height: size.height * .0625,
                          color: const Color(0xFFD42026),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: size.width * .01),
                              child: const Text('Séries', style: TextStyle(color: Colors.white),),
                            )
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * .01),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: size.width * .38,
                          height: size.height * .0625,
                          color: const Color(0xFFD42026),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: size.width * .01),
                              child: const Text('Eventos', style: TextStyle(color: Colors.white),),
                            )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                controller.listCharacters.isNotEmpty ? Expanded(
                  child: controller.isLoading ? const Center(child: CircularProgressIndicator()) :  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.listCharacters.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFFD42026), width: 1,
                            ),
                          )
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: size.height * .025, horizontal: size.width * .015),
                              child: CircleAvatar(
                                minRadius: size.height * .05,
                                backgroundImage: NetworkImage(controller.listCharacters[index].image),
                              ),
                            ),
                            Expanded(child: Row(
                              children: [
                                SizedBox(
                                  width: size.width * 0.19,
                                  child: Text(controller.listCharacters[index].name)
                                ),
                                Align(
                                  child: SizedBox(
                                    height: size.height * .12,
                                    child: Center(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            for(int i = 0; i < controller.listCharacters[index].series.length; i++)
                                            SizedBox(
                                              width: size.width * 0.26,
                                              child: Text(controller.listCharacters[index].series[i].name)
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  child: SizedBox(
                                    height: size.height * .12,
                                    child: Center(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            if(controller.listCharacters[index].events.isEmpty)
                                            const Text('Sem eventos para o personagem.'),
                                            for(int i = 0; i < controller.listCharacters[index].events.length; i++)
                                            SizedBox(
                                              width: size.width * 0.3,
                                              child: Text(controller.listCharacters[index].events[i].name)
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ) : const Expanded(child: Center(child: Text('Nenhum personagem encontrado!'))),
                NumberPagination(
                  colorPrimary: Colors.red,
                  threshold: 3,
                  pageInit: controller.currentPage,
                  onPageChanged: (int pageNumber) {
                    controller.changePage(offset: (pageNumber - 1) * 4, currentPage: pageNumber);
                  }, 
                  pageTotal: controller.searchCharacterInput.text.isEmpty ? 391 : 1,
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}