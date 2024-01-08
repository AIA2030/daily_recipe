class Ad{
  String? title;
  String? subtitle;
  String? image;
  int? calories;
  int? prep_time;
  int? serving;

  Ad({required this.title, this.subtitle, this.image, this.serving, this.prep_time, this.calories});

   Ad.fromJson(Map<String, dynamic>data){
     title = data['title'];
     subtitle = data['subtitle'];
     image = data['image'];
     calories = data['calories'];
     prep_time = data['prep_time'];
     serving = data['serving'];
   }

   Map<String, dynamic>toJson(){
     return{
       "title": title,
       "subtitle": subtitle,
       "image": image,
       "calories": calories,
       "prep_time": prep_time,
       "serving": serving,
     };
   }

}