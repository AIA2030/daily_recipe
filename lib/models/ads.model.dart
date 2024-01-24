class Ad {
  String? docId;
  String? title;
  String? type;
  String? image;
  num? calories;
  num? time;
  num? serving;

  Ad();


  Ad.fromJson(Map<String, dynamic> data, [String? id]) {
    docId = id;
    title = data['title'];
    type = data['type'];
    image = data['image'];
    calories = data['calories'];
    time = data['time'];
    serving = data['serving'];
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "type": type,
      "image": image,
      "calories": calories,
      "time": time,
      "serving": serving,
    };
  }
}
