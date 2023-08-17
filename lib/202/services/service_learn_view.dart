import 'dart:io';
// ignore: avoid_web_libraries_in_flutter

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kurs/202/services/post_service_learn.dart';

import 'Post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  bool _isLoading = false; //başta false olacak
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  late final PostService _postService;

  @override
  void initState() {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    _postService = PostService();
    super.initState();
    fetchPostItems(); //initstate içinde await diyemeyiz çünkü bir nevi constructordur bu.
    //eğer proje başlamadan hemen önce çağırmak istiyorsak initstate kullanmalıyız.
    fetchPostItemsAdvance();
  }

  void changeLoading() {
    _isLoading = !_isLoading;
  }

  Future<void> fetchPostItems() async {
    changeLoading();
    final response = await Dio().get(
        'https://jsonplaceholder.typicode.com/posts'); //FUTURE dönerse asenkron döner anlamına gelir.o zaman async ve wait parametresi kullanmamız gerekir.

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
        //ben burda _items'ı yeni bir liste yapmam için mapliyorum,vu bunu postmodel bir liste yapacağım için postomdel veriyorum.
        //PostModelin içinde fromjason var ona ben e yi veriyorum ve listeye çeviriyorum.
        //sonra ekranımda çalışması için setstate yapıyorum.
      }
    }
    changeLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    changeLoading();
    final _items = await _postService.fetchPostItemsAdvance();

    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink(),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(_items?[index].title ?? ''),
              subtitle: Text(_items?[index].body ?? ''),
            ),
          ); //eğer bir null varsa boş göster dedik.
        },
      ),
    );
  }
}
