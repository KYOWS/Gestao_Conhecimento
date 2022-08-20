import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gestao_conhecimento/app/controller/home_controller/controller.dart';
import 'package:gestao_conhecimento/app/ui/web/widgets/drawer.dart';

class Home extends StatelessWidget {
  final controller = Get.put(Controller(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        leading: Container(
          //width: 55,
          child: Material(
            color: Colors.blue[700],
            child: InkWell(
              borderRadius: BorderRadius.circular(55),
              splashColor: Colors.blue[500],
              onTap: () {
                controller.openDrawer();
              },
              child: Icon(Icons.menu),
            ),
          ),
        ),
        title: Text('INICIO'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'QUANTIDADE DE CLIQUE',
            ),
            GetBuilder<Controller>(
                builder: (_) => Text(
                      '${controller.count}',
                      style: Theme.of(context).textTheme.headline4,
                    )),
            ElevatedButton(
              child: Text('Next Route'),
              onPressed: () {
                Get.toNamed('/oring');
              },
            ),
            ElevatedButton(
              child: Text('mundo 1'),
              onPressed: () {
                Get.toNamed('/mundo', arguments: ["mundo 1"]);
              },
            ),
            ElevatedButton(
              child: Text('mundo 2'),
              onPressed: () {
                Get.toNamed('/mundo', arguments: ["mundo 2"]);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<Controller>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
