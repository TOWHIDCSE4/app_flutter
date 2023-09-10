class UserBankList {
  final int code;
  final bool success;
  final String msgCode;
  final String msg;
  final Data data;

  UserBankList({
    required this.code,
    required this.success,
    required this.msgCode,
    required this.msg,
    required this.data,
  });

  factory UserBankList.fromJson(Map<String, dynamic> json) => UserBankList(
    code: json["code"],
    success: json["success"],
    msgCode: json["msg_code"],
    msg: json["msg"],
    data: Data.fromJson(json["data"]),
  );
}

class Data {
  final int currentPage;
  final List<BankList> data;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final String lastPageUrl;
  final List<Link> links;
  final String nextPageUrl;
  final String path;
  final int perPage;
  final String prevPageUrl;
  final int to;
  final int total;

  Data({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    currentPage: json["current_page"] ?? 0,
    data: json["data"] == null ? [] : List<BankList>.from(json["data"].map((x) => BankList.fromJson(x))),
    firstPageUrl: json["first_page_url"] ?? '',
    from: json["from"] ?? 0,
    lastPage: json["last_page"] ?? '',
    lastPageUrl: json["last_page_url"] ?? '',
    links: json["links"] == null ? [] : List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"] ?? '',
    path: json["path"] ?? '',
    perPage: json["per_page"] ?? 0,
    prevPageUrl: json["prev_page_url"] ?? '',
    to: json["to"] ?? 0,
    total: json["total"] ?? 0,
  );
}

class BankList {
  final int id;
  final String updatedAt;
  final String createdAt;
  final String bankCode;
  final String bankFullName;
  final String bankShortName;
  final String bankIcon;

  BankList({
    required this.id,
    required this.updatedAt,
    required this.createdAt,
    required this.bankCode,
    required this.bankFullName,
    required this.bankShortName,
    required this.bankIcon,
  });

  factory BankList.fromJson(Map<String, dynamic> json) => BankList(
    id: json["id"] ?? 0,
    updatedAt: json["updated_at"] ?? "",
    createdAt: json["created_at"] ?? "",
    bankCode: json["bank_code"] ?? "",
    bankFullName: json["bank_full_name"] ?? "",
    bankShortName: json["bank_short_name"] ?? "",
    bankIcon: json["bank_icon"] ?? "",
  );
}

class Link {
  final String url;
  final String label;
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"] ?? '',
    label: json["label"] ?? '',
    active: json["active"] ?? false,
  );
}
