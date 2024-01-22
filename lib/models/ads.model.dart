class Ad {
  String? docId;
  String? title;
  String? subtitle;
  String? image;
  String? calories;
  String? time;
  String? serving;

   Ad();

  // Ad(
  //     {required
  //       this.docId,
  //       this.title,
  //       this.subtitle,
  //       this.image,
  //       this.serving,
  //       this.prep_time,
  //       this.calories});

  Ad.fromJson(Map<String, dynamic> data, [String? id]) {
    docId = id;
    title = data['title'];
    subtitle = data['subtitle'];
    image = data['image'];
    calories = data['calories'];
    time = data['time'];
    serving = data['serving'];
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "subtitle": subtitle,
      "image": image,
      "calories": calories,
      "time": time,
      "serving": serving,
    };
  }
}

// class Ads {
//   final String title;
//   final String subtitle;
//   final String image;
//   final int calories;
//   final int prep_time;
//   final int serving;
//
//   String error = '';
//
//   Ads({
//     required this.title,
//     required this.subtitle,
//     required this.image,
//     required this.serving,
//     required this.calories,
//     required this.prep_time,
//   });
//
//   factory Ads.fromJson(dynamic json) {
//     if (json == null) {
//       return Ads(
//         title: '',
//         subtitle: '',
//         image: '',
//         calories: 120,
//         prep_time: 10,
//         serving: 1,
//       );
//     }
//
//     return Ads(
//         title: json['title'],
//         subtitle: json['subtitle'],
//         image: json['image'],
//         calories: json['calories'],
//         serving: json['serving'],
//         prep_time: json['prep_time']);
//   }
// }