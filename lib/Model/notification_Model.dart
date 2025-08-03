

class NotificationModel {
  final String? id;
  final String? image;
  final String? title;
  final String? body;
  final String? timestamp;
  

  NotificationModel({
    this.id,
    this.image,
    this.title,
    this.body,
    this.timestamp,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json, [String? docId]) {
    return NotificationModel(
      id: docId,
      image: json["image"],
      title: json["title"],
      body: json["body"],
      timestamp: json["timestamp"],
    );
  }

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,
    "body": body,
    "timestamp": timestamp,
  };

  NotificationModel copyWith({
    String? id,
    String? image,
    String? title,
    String? body,
    String? timestamp,
  }) {
    return NotificationModel(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      body: body ?? this.body,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
