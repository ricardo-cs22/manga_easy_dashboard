import 'package:dashboard_manga_easy/modules/autor/domain/api_easy_comic.dart';
import 'package:dashboard_manga_easy/modules/autor/domain/models/chapter_authoral_model.dart';
import 'package:flutter/foundation.dart';

class ChapterAuthoralRepository {
  final ApiEasyComicAuthorial apiEasyComicAuthorial = ApiEasyComicAuthorial();

  Future<void> create({required ChapterAuthorial objeto}) async {
    var ret = await apiEasyComicAuthorial.post('chapter', objeto.toJson());
    if (ret.containsKey('erro')) {
      throw Exception(ret['erro']);
    }
  }

  Future<void> delete({required String id}) {
    // TODO: implement deletDocument
    throw UnimplementedError();
  }

  Future<ChapterAuthorial?> get({required String id}) async {
    try {
      var ret = await apiEasyComicAuthorial.get('chapter/$id');
      return ChapterAuthorial.fromJson(ret);
    } catch (e) {
      return null;
    }
  }

  Future<List<ChapterAuthorial>> list({String? where}) async {
    try {
      var ret = await apiEasyComicAuthorial.get('chapter');
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

  Future<void> update({required ChapterAuthorial objeto}) async {
    var ret = await apiEasyComicAuthorial.put('chapter', objeto.toJson());
    if (ret.containsKey('erro')) {
      throw Exception(ret['erro']);
    }
  }

  static List<ChapterAuthorial> _parseComicAuthorial(dynamic map) {
    return map.map<ChapterAuthorial>((e) => ChapterAuthorial.fromJson(e)).toList();
  }
}
