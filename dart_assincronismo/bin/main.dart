import 'package:http/http.dart';
import 'dart:convert';

void main() {
  //requestData();
  requestDataAsync();
}

requestData(){
  String url = "https://gist.githubusercontent.com/Murilobarbosas/5dd1756a0c6079bba6af061e15420967/raw/41b36cf453e890b072111c1ffc0d4ce27689f7a9/gistfile1.json";
  Future<Response> futureResponse = get(Uri.parse(url));
  print(futureResponse);
  futureResponse.then((Response response){
    print(response);
    print(response.body);
    json.decode(response.body);
    List<dynamic> listAccounts = json.decode(response.body);
    Map<String, dynamic>mapCarla = listAccounts.firstWhere(
      (element) => element["name"] == "Carla",
    );
    print(mapCarla["balance"]);
  },
  );

  
}

requestDataAsync() async {
  String url = "https://gist.githubusercontent.com/Murilobarbosas/5dd1756a0c6079bba6af061e15420967/raw/41b36cf453e890b072111c1ffc0d4ce27689f7a9/gistfile1.json";
  await get(Uri.parse(url));
  Response response = await get(Uri.parse(url));
  print(json.decode(response.body)[0]);
  print("De fato, a ultima coisa a acontecer na funçao");
}