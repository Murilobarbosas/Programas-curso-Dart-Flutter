import 'package:http/http.dart';

void main() {
  fetchRecipes();
}

Future<void> fetchRecipes() async{
  String url = 
  "https://gist.githubusercontent.com/Murilobarbosas/21cd7eeb12f2d16f963ce6cfbcda4d9e/raw/0f5b38015e0fac92c8a35368585087b0ce42fa07/gistfile1.json";
  Uri uri = Uri.parse(url);
  get(uri).then((Response response){
    print(response.body);
  },);
}