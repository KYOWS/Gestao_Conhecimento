import 'package:flutter/material.dart';
import 'btnavegar.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[50],
        child: ListView(
          //padding: EdgeInsets.zero,
          children: <Widget>[
            Tooltip(
              message: '',
              verticalOffset: -90,
              child: Container(
                height: 210,
                color: Colors.blue[500],
                margin: const EdgeInsets.only(bottom: 10.0),
                child: const Image(
                  image: AssetImage('assets/logo.png'),
                  filterQuality: FilterQuality.medium,
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
    );
  }
}
