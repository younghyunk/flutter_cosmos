import 'package:flutter/material.dart';
import 'package:flutter_cosmos/pages/applauncher/model/planets.dart';
import 'package:flutter_cosmos/pages/applauncher/widget/planet_row.dart';

class PlanetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemExtent: 160.0,
        itemCount: PlanetDao.planets.length,
        itemBuilder: (_, index) => new PlanetRow(PlanetDao.planets[index]),
      ),
    );
  }
}
