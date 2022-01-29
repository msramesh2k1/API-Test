import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class APIService extends GetxController {
  Future addData(Map body) async {
    final Uri url = Uri.parse(
        "http://104.155.187.128:9999/api/upload/v1/event/updateEvent");
    http.Response response = await http.post(url, body: jsonEncode(body));

    return response.body;
  }
}
