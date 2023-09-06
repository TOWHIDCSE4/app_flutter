// To parse this JSON data, do
//
//     final renterMasterModel = renterMasterModelFromJson(jsonString);

import 'dart:convert';

RenterMasterModel renterMasterModelFromJson(String str) => RenterMasterModel.fromJson(json.decode(str));

class RenterMasterModel {
    final Data data;

    RenterMasterModel({
        required this.data,
    });

    factory RenterMasterModel.fromJson(Map<String, dynamic> json) => RenterMasterModel(
        data: Data.fromJson(json["data"]),
    );
}

class Data {
    final String name;
    final String imageUrl;

    Data({
        required this.name,
        required this.imageUrl,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"] ?? "",
        imageUrl: json["image_url"] ?? "",
    );
}
