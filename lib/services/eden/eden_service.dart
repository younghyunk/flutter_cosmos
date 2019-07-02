
import 'dart:ui';

import 'package:flutter_cosmos/pages/applauncher/blocs/applauncher_bloc.dart';
import 'package:flutter_cosmos/pages/applauncher/models/app_tile.dart';

class EdenService extends AppLauncherDataSource {
  @override
  Stream<AppTileList> getAppTileList() {
    return null;
  }

  @override
  Stream<Image> getResource(String resourcePath) {
    return null;
  }
}
