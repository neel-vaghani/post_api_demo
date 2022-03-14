import 'dart:convert';

AddCategory addCategoryFromJson(String str) =>
    AddCategory.fromJson(json.decode(str));

String addCategoryToJson(AddCategory data) => json.encode(data.toJson());

class AddCategory {
  AddCategory({
    required this.insertBcProductCategories,
  });

  InsertBcProductCategories insertBcProductCategories;

  factory AddCategory.fromJson(Map<String, dynamic> json) => AddCategory(
        insertBcProductCategories: InsertBcProductCategories.fromJson(
            json["insert_bc_product_categories"]),
      );

  Map<String, dynamic> toJson() => {
        "insert_bc_product_categories": insertBcProductCategories.toJson(),
      };
}

class InsertBcProductCategories {
  InsertBcProductCategories({
    required this.returning,
  });

  List<Returning> returning;

  factory InsertBcProductCategories.fromJson(Map<String, dynamic> json) =>
      InsertBcProductCategories(
        returning: List<Returning>.from(
            json["returning"].map((x) => Returning.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "returning": List<dynamic>.from(returning.map((x) => x.toJson())),
      };
}

class Returning {
  Returning({
    required this.id,
    required this.categoryName,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;
  String categoryName;
  String createdBy;
  String updatedBy;
  DateTime createdAt;
  DateTime updatedAt;

  factory Returning.fromJson(Map<String, dynamic> json) => Returning(
        id: json["id"],
        categoryName: json["category_name"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
