import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'Post_model.dart';

class PostService {
  late final Dio _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  Future<bool> addItemToService(PostModel postModel) async {
    //bool bir değer olmasının sebebi eğer create olduysa true döndürsün demek istedik.
    final response = await _dio.post(_PostService.posts.name,
        data: postModel,
        options: Options(
            contentType:
                Headers.jsonContentType)); //content type araştır nedir?
    return response.statusCode == HttpStatus.ok;
  }

  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response = await _dio.get('post');
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
      return null; //else
    } catch (e) {
      print('Sorun cıktı');
    }
  }
}

enum _PostService {
  posts,
  comments;
}
