
import 'package:code_hero/app/home/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:number_pagination/number_pagination.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

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
              child: RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'BUSCA', style: TextStyle(color: Color(0xFFD42026), fontFamily: 'Roboto', fontWeight: FontWeight.w900, fontSize: 16, decoration: TextDecoration.underline,)),
                    TextSpan(text: ' MARVEL', style: TextStyle(color: Color(0xFFD42026), fontFamily: 'Roboto', fontWeight: FontWeight.w900, fontSize: 16),),
                    TextSpan(text: ' TESTE FRONT-END', style: TextStyle(color: Color(0xFFD42026), fontFamily: 'Roboto', fontWeight: FontWeight.w300, fontSize: 16),),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Nome do Personagem'),
                    SizedBox(
                      width: size.width * .84,
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
                  ],
                ),  
                SizedBox(height: size.height * .018,),
                Container(
                  width: double.infinity,
                  height: size.height * .0625,
                  color: const Color(0xFFD42026),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * .28),
                      child: const Text('Nome', style: TextStyle(color: Colors.white),),
                    )
                  ),
                ),
                controller.listCharacters.isNotEmpty ? Expanded(
                  child: controller.isLoading ? const Center(child: CircularProgressIndicator()) :  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.listCharacters.length,
                    itemBuilder: (context, index) => Container(
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
                            padding: EdgeInsets.symmetric(vertical: size.height * .025, horizontal: size.width * .048),
                            child: CircleAvatar(
                              minRadius: size.height * .05,
                              backgroundImage: NetworkImage(controller.listCharacters[index].image),
                            ),
                          ),
                          Expanded(child: Text(controller.listCharacters[index].name)),
                        ],
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