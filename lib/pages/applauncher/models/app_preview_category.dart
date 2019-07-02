import 'package:flutter_cosmos/pages/applauncher/model/app_preview_category_item.dart';
import 'package:meta/meta.dart';

class AppPreviewCategoryList {
  final List<AppPreviewCategory> categories;

  AppPreviewCategoryList({this.categories});

  factory AppPreviewCategoryList.fromJson(List<dynamic> parsedJson) {
    return AppPreviewCategoryList(
        categories: parsedJson
            .map((item) => AppPreviewCategory.fromJson(item))
            .toList());
  }

  @override
  String toString() {
    String strOfCategories = '';
    categories.forEach((category) => strOfCategories += '${category.toString()},');
    return '$strOfCategories';
  }
}

class AppPreviewCategory {
  final String id;
  final String title;
  AppPreviewCategoryItemList items;

  AppPreviewCategory(
      {@required this.id, @required this.title, @required this.items});

  factory AppPreviewCategory.fromJson(Map<String, dynamic> parsedJson) {
    return AppPreviewCategory(
      id: parsedJson['entity']['id'],
      title: parsedJson['entity']['current_element']['title'],
      items: AppPreviewCategoryItemList.fromJson(parsedJson['child']),
    );
  }

  @override
  String toString() {
    return 'category { id="$id", title="$title", items = [ ${items.toString()} ] }';
  }
}
