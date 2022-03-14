import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:post_api_demo/model.dart';

class ApiService {
  static myApiService() async {
    String api = 'https://api.aj.anant.io/api/login';
    Dio dio = Dio();

    String email = 'harsh.moradiya@joflee.com';
    String password = 'Harsh@123';
    String product_id = '9191ea68-31cb-4be6-adf0-1f1e648c399c';

    FormData fromData = FormData.fromMap({
      "email": email,
      "password": password,
      "product_id": product_id,
    });
    Response response = await dio.post(api, data: fromData);

    LoginData result = LoginData.fromJson(response.data);
    print(result.data!.email);
  }
}
