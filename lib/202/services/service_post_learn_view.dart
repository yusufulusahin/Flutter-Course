import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'Post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  bool _isLoading = false; //başta false olacak
  String? name;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIDController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post('posts',
        data: postModel,
        options: Options(
            contentType:
                Headers.jsonContentType)); //content type araştır nedir?
    if (response.statusCode == HttpStatus.ok) {
      name = 'basarili';
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name ?? ''),
          actions: [
            _isLoading ? const CircularProgressIndicator() : const SizedBox()
          ],
        ),
        body: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'title'),
              keyboardType: TextInputType.text,
              textInputAction:
                  TextInputAction.next, //klavyeden ileri butonunu oluşturur.
            ),
            TextField(
              textInputAction: TextInputAction.next,
              controller: _bodyController,
              decoration: InputDecoration(labelText: 'body'),
            ),
            TextField(
              controller: _userIDController,
              keyboardType: TextInputType.phone,
              autofillHints: [AutofillHints.telephoneNumber],
              decoration: InputDecoration(labelText: 'userId'),
            ),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIDController.text.isNotEmpty) {
                          final model = PostModel(
                              body: _bodyController.text,
                              title: _titleController.text,
                              userId: int.tryParse(_userIDController.text));
                          _addItemToService(model);
                        }
                      },
                child: const Text('Send'))
          ],
        ));
  }
}
