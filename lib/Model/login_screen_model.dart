import 'dart:convert';

LoginData loginDataFromJson(String str) => LoginData.fromJson(json.decode(str));

String loginDataToJson(LoginData data) => json.encode(data.toJson());

class LoginData {
  LoginData({
    required this.status,
    required this.message,
    this.data,
    required this.code,
  });

  bool status;
  String message;
  Data? data;
  int code;

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
        "code": code,
      };
}

class Data {
  Data({
    this.id,
    this.employeeId,
    this.name,
    this.email,
    this.isCompleted,
    this.token,
    this.xHasuraUserId,
    this.xHasuraRole,
    this.xHasuraIsOwner,
    this.cacheControl,
  });

  String? id;
  String? employeeId;
  String? name;
  String? email;
  bool? isCompleted;
  String? token;
  String? xHasuraUserId;
  String? xHasuraRole;
  bool? xHasuraIsOwner;
  String? cacheControl;

  factory Data.fromJson(json) => Data(
        id: json["id"],
        employeeId: json["employee_id"],
        name: json["name"],
        email: json["email"],
        isCompleted: json["is_completed"],
        token: json["token"],
        xHasuraUserId: json["X-Hasura-User-Id"],
        xHasuraRole: json["X-Hasura-Role"],
        xHasuraIsOwner: json["X-Hasura-Is-Owner"],
        cacheControl: json["Cache-Control"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "employee_id": employeeId,
        "name": name,
        "email": email,
        "is_completed": isCompleted,
        "token": token,
        "X-Hasura-User-Id": xHasuraUserId,
        "X-Hasura-Role": xHasuraRole,
        "X-Hasura-Is-Owner": xHasuraIsOwner,
        "Cache-Control": cacheControl,
      };
}
