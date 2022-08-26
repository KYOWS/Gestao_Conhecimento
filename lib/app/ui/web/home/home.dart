import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gestao_conhecimento/app/controller/home_controller/controller.dart';
import 'package:gestao_conhecimento/app/ui/web/widgets/drawer.dart';

class Home extends StatelessWidget {
  final controller = Get.put(Controller(), permanent: true);

  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      key: controller.scaffoldKey,
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blue[600],
                  constraints: const BoxConstraints(
                    minHeight: 0,
                    minWidth: 0,
                  ),
                  height: altura,
                  //width: 300,
                  child: const MainDrawer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.blue[700],
                      constraints: const BoxConstraints(
                        minHeight: 0,
                        minWidth: 0,
                      ),
                      height: 56,
                      width: largura - 200,
                      child: AppBar(
                        backgroundColor: Colors.blue[700],
                        leading: Material(
                          color: Colors.blue[700],
                          child: InkWell(
                            borderRadius: BorderRadius.circular(55),
                            splashColor: Colors.blue[500],
                            onTap: () {
                              controller.openDrawer();
                            },
                            child: const Icon(Icons.menu),
                          ),
                        ),
                        title: const Text('INICIO'),
                      ),
                    ),
                    Container(
                      color: Colors.blue[50],
                      constraints: const BoxConstraints(
                        minHeight: 0,
                        minWidth: 0,
                      ),
                      height: altura - 56,
                      width: largura - 200,
                      child: SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        //reverse: true,
                        child: Column(
                          children: [
                            const Text(
                                'ggggggdfffffffffffffffffffffffffffffffffffffffffffffffffffffjhgddddddddddddd dddddd'),
                            Container(
                              color: Colors.blue[700],
                              height: 100,
                              width: 500,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<Controller>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
