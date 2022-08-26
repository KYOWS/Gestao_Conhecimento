import 'dart:ui';

import 'package:flutter/material.dart';
import 'btnavegar.dart';

class MainDrawer extends StatelessWidget {
  //var blur;

  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        child: Container(
          color: Colors.blue[100],
          child: ListView(
            //padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Tooltip(
                message: '',
                verticalOffset: -90,
                child: Container(
                  height: 110,
                  color: Colors.blue[500],
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: const Image(
                    image: AssetImage('assets/logo.png'),
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              const Btnavegar(
                title: 'INICIO',
                navegacao: '/',
                icone: Icons.home,
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
