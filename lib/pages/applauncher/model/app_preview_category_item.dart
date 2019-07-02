import 'package:meta/meta.dart';

class AppPreviewCategoryItemList {
  final List<AppPreviewCategoryItem> items;

  AppPreviewCategoryItemList({this.items});

  factory AppPreviewCategoryItemList.fromJson(List<dynamic> parsedJson) {
    return AppPreviewCategoryItemList(
        items: parsedJson
            .map((item) => AppPreviewCategoryItem.fromJson(item))
            .toList());
  }

  @override
  String toString() {
    String strOfItems = '';
    items.forEach((item) => strOfItems += '${item.toString()},');
    return '$strOfItems';
  }
}

class AppPreviewCategoryItem {
  final String id;
  final String title;
  final String subTitle;
  final String iconPath;

  AppPreviewCategoryItem(
      {@required this.id,
      @required this.title,
      @required this.iconPath,
      this.subTitle = ''});

  factory AppPreviewCategoryItem.fromJson(Map<String, dynamic> parsedJson) {
    return AppPreviewCategoryItem(
        id: parsedJson['entity']['id'],
        title: parsedJson['entity']['current_element']['title'],
        subTitle: parsedJson['entity']['current_element']['subTitle'],
        iconPath: parsedJson['entity']['current_element']['icon']);
  }

  @override
  String toString() {
    return 'categoryItem { id="$id", title="$title", subTitle="$subTitle", iconPath="$iconPath" }';
  }
}

