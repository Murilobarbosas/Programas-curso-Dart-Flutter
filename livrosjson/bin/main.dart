import 'package:http/http.dart';
import 'dart:convert';

void main() {
  requestData();
  //requestDataAsync();
}

requestData(){
  String url = "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json";
  Future<Response> futureResponse = get(Uri.parse(url));
  print(futureResponse);
  futureResponse.then((Response response){
    List<dynamic> listItems = json.decode(response.body);
    String autorBuscado = "Machado de Assis";
    List<Map<String, dynamic>> resultados = listItems.cast<Map<String, dynamic>>().where(
      (element) => element["author"] == autorBuscado)
      .toList();
    print(resultados);
  },
  );

  
}
