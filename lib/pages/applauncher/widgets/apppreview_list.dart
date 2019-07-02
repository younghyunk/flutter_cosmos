import 'package:flutter/material.dart';
import 'package:flutter_cosmos/pages/applauncher/models/planets.dart';
import 'package:flutter_cosmos/pages/applauncher/widgets/apppreview_list_tile.dart';

class AppPreviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemExtent: 160.0,
        itemCount: PlanetDao.planets.length,
        itemBuilder: (_, index) => new AppPreviewListTile(PlanetDao.planets[index]),
      ),
    );
  }
}
