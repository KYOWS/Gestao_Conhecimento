import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Btnavegar extends StatelessWidget {
  final String title;
  final double height;
  final String navegacao;
  final double raio;
  final IconData icone;

  const Btnavegar({
    Key key,
    this.title = '',
    this.height = 55,
    this.navegacao = '',
    this.raio = 10,
    this.icone = Icons.search,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Material(
        borderRadius: BorderRadius.circular(raio),
        color:
            Get.currentRoute == navegacao ? Colors.blue[800] : Colors.blue[50],
        child: InkWell(
          borderRadius: BorderRadius.circular(raio),
          splashColor: Colors.blue[200].withOpacity(0.7),
          highlightColor: Colors.blue[500].withOpacity(0.6),
          onTap: () {
            Get.back();
            Get.currentRoute != navegacao
                ? Get.offAllNamed(
                    navegacao,
                    arguments: ["mundo 3"],
                  )
                : null;
          },
          //onTap: ()=> Get.toNamed(this.navegacao),
          child: Center(
            child: ListTile(
              leading: Icon(
                icone,
                color:
                    Get.currentRoute == navegacao ? Colors.white : Colors.black,
              ),
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  color: Get.currentRoute == navegacao
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
