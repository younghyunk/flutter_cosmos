import 'dart:async';
import 'dart:ui';

import 'package:flutter_cosmos/blocs/bloc_provider.dart';
import 'package:flutter_cosmos/pages/applauncher/blocs/applauncher_datasource.dart';
import 'package:flutter_cosmos/pages/applauncher/models/apptile.dart';

class AppLauncherBloc extends BlocBase {
  final AppLauncherDataSource _dataSource;
  StreamSubscription<AppTileList> _appTileListSubscription;
  Map<String, StreamController<AppTile>> _appTileStreamMap;

  AppLauncherBloc(this._dataSource);

  void getAppTileList() {
    _appTileListSubscription =
        _dataSource.getAppTileList().listen(_updateAppTileList);
  }

  Stream<AppTile> getAppTile(String appTileName) {
    if (!_appTileStreamMap.containsKey(appTileName))
      _appTileStreamMap.putIfAbsent(
          appTileName, () => StreamController<AppTile>());
    return _appTileStreamMap[appTileName].stream;
  }

  Stream<Image> getResource(String resourcePath) =>
      _dataSource.getResource(resourcePath);

  @override
  void dispose() {
    _appTileListSubscription?.cancel();
  }

  void _updateAppTileList(AppTileList appTileList) {
    appTileList.tiles.forEach((appTile) {
      _appTileStreamMap
          .putIfAbsent(appTile.title, () => StreamController<AppTile>())
          .add(appTile);
    });
  }
}
