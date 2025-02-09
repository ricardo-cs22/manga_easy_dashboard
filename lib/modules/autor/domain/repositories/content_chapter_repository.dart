import 'package:dashboard_manga_easy/modules/autor/domain/api_easy_comic.dart';
import 'package:dashboard_manga_easy/modules/autor/domain/models/content_chapter_model.dart';
import 'package:flutter/foundation.dart';

class ContentChapterRepository {
  final ApiEasyComicAuthorial apiEasyComicAuthorial = ApiEasyComicAuthorial();

  Future<void> create({required ContentChapterModel objeto}) async {
    var ret = await apiEasyComicAuthorial.post('content_chapter', objeto.toJson());
    if (ret.containsKey('erro')) {
      throw Exception(ret['erro']);
    }
  }

  Future<void> delete({required String id}) {
    // TODO: implement deletDocument
    throw UnimplementedError();
  }

  Future<ContentChapterModel?> get({required String id}) async {
    try {
      var ret = await apiEasyComicAuthorial.get('content_chapter/$id');
      return ContentChapterModel.fromJson(ret);
    } catch (e) {
      return null;
    }
  }

  Future<List<ContentChapterModel>> list({String? where}) async {
    try {
      var ret = await apiEasyComicAuthorial.get('content_chapter');
      print(ret);
      if (ret is List) {
        return compute(_parseComicAuthorial, ret);
      }
      print(ret.runtimeType);
      return [];
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<void> update({required ContentChapterModel objeto}) async {
    var ret = await apiEasyComicAuthorial.put('content_chapter', objeto.toJson());
    if (ret.containsKey('erro')) {
      throw Exception(ret['erro']);
    }
  }

  static List<ContentChapterModel> _parseComicAuthorial(dynamic map) {
    return map.map<ContentChapterModel>((e) => ContentChapterModel.fromJson(e)).toList();
  }
}
