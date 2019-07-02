import 'package:flutter_cosmos/pages/applauncher/model/app_preview_category.dart';
import 'package:meta/meta.dart';

class AppTileList {
  final List<AppTile> tiles;

  AppTileList({this.tiles});

  factory AppTileList.fromJson(List<dynamic> parsedJson) {
    return AppTileList(
        tiles: parsedJson.map((item) => AppTile.fromJson(item)).toList());
  }

  @override
  String toString() {
    String strOfAppTiles = '';
    tiles.forEach((appTile) => strOfAppTiles += '${appTile.toString()},');
    return '$strOfAppTiles';
  }
}

class AppTile {
  final String id;
  final String title;
  final String iconPath;
  final AppPreviewCategoryList categories;

  AppTile(
      {@required this.id,
      @required this.title,
      @required this.iconPath,
      @required this.categories});

  factory AppTile.fromJson(Map<String, dynamic> parsedJson) {
    return AppTile(
      id: parsedJson['entity']['id'],
      title: parsedJson['entity']['current_element']['title'],
      iconPath: parsedJson['entity']['current_element']['icon'],
      categories: AppPreviewCategoryList.fromJson(parsedJson['child']),
    );
  }

  @override
  String toString() {
    return 'appTile { id="$id", title="$title", iconPath="$iconPath", categories = [ ${categories.toString()} ] }';
  }
}
