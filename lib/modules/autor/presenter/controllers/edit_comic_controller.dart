import 'package:dashboard_manga_easy/core/interfaces/controller.dart';
import 'package:dashboard_manga_easy/modules/autor/domain/comic_model.dart';
import 'package:flutter/material.dart';

class EditComicAuthorialController extends ValueNotifier implements IController {
  ComicAuthorialModel? comic;

  EditComicAuthorialController() : super(null);

  @override
  void onClose() {
    dispose();
  }

  @override
  void onInit(BuildContext context) {
    comic = ModalRoute.of(context)!.settings.arguments as ComicAuthorialModel?;
    comic ??= ComicAuthorialModel(
      autor: '',
      chapter: [],
      cover: '',
      scans: '',
      sinopse: '',
      status: true,
      title: '',
      uniqueid: '',
      yearUp: 0,
    );
  }
}
