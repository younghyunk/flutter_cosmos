import 'package:flutter/material.dart';
import 'package:flutter_cosmos/pages/applauncher/models/planet.dart';
import 'package:flutter_cosmos/pages/applauncher/widgets/theme.dart' as Theme;

class AppPreviewListTile extends StatelessWidget {
  final Planet planet;

  AppPreviewListTile(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetCard = Opacity(
        opacity: 0.75,
        child: Container(
          margin: const EdgeInsets.only(left: 24.0, right: 24.0),
          decoration: BoxDecoration(
            color: Theme.MyColors.planetCard,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0))
            ],
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 16.0, left: 16.0),
            constraints: BoxConstraints.expand(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(planet.name, style: Theme.TextStyles.planetTitle),
              ],
            ),
          ),
        ));

    return Container(
      height: 120.0,
      margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: FlatButton(
        onPressed: () => _navigateTo(context, planet.id),
        child: Stack(
          children: <Widget>[
            planetCard,
          ],
        ),
      ),
    );
  }

  _navigateTo(context, String id) {}
}
