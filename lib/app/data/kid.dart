class Kid {
  int? id;
  String? name;
  String? country;
  bool? status;

  Kid({
    this.id,
    this.name,
    this.country,
    this.status,
  });

  Kid.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    country = json['country'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['country'] = country;
    data['status'] = status;
    return data;
  }
}
