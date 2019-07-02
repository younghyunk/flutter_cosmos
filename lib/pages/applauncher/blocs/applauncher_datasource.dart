
import 'dart:ui';

import 'package:flutter_cosmos/pages/applauncher/models/apptile.dart';

abstract class AppLauncherDataSource {
  Stream<AppTileList> getAppTileList();

  Stream<Image> getResource(String resourcePath);
}

