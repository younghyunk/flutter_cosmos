
import 'dart:ui';

import 'package:flutter_cosmos/pages/applauncher/models/app_tile.dart';

abstract class AppLauncherDataSource {
  Stream<AppTileList> getAppTileList();

  Stream<Image> getResource(String resourcePath);
}

