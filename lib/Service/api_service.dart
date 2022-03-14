import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:post_api_demo/Model/login_screen_model.dart';

class ApiService {
  static Dio dio = Dio();
  static loginScreenApi() async {
    String api = 'https://api.aj.anant.io/api/login';

    String email = 'harsh.moradiya@joflee.com';
    String password = 'Harsh@123';
    String product_id = '9191ea68-31cb-4be6-adf0-1f1e648c399c';

    FormData fromData = FormData.fromMap({
      "email": email,
      "password": password,
      "product_id": product_id,
    });
    Response response = await dio.post(
      api,
      data: fromData,
      options: Options(
        headers: {
          "x-hasura-admin-secret": "xPgGAo91XSs0vXwm",
        },
      ),
    );

    LoginData result = LoginData.fromJson(response.data);
    print(result.data!.email);
  }

  static addCategoryUi() async {
    String id = '1w1';
    String name = 'ssssss';
    String createdBy = 'Harsh Bhau';
    String updatedBy = 'Abhi Bhau';
    DateTime createdAt = DateTime.now();
    DateTime updatedAt = DateTime.now();

    String api = 'https://gql.aj.anant.io/api/rest/productCategory/add';

    FormData fromData = FormData.fromMap({
      "id": id,
      "password": pa'sword,
      "product_id": '',
    });


    LoginData result = LoginData.fromJson(response.data);
    print(result.data!.email);
  }
}
