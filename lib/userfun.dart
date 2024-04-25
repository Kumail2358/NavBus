import 'dart:developer';

import 'package:http/http.dart' as http;

class UserService {
  Future<void> getUser() async {
    // Dio dio = Dio();
    // // Corrected the syntax here, removed the extra dot before Dio().
    // try {
    //   Response response = await dio.get('http://navbus.tutorpedia.site/signup?email=itrat_tt@gmail.com&password=12345678&name=itrat');
    // }
    // catch(e){
    //   print('Error: $e');
    // }
    // // Print response data\
    // print(132);\
    try{
    http.Response response = await http.get(Uri.parse('http://navbus.tutorpedia.site/signup?email=itrat_tt@gmail.com&password=12345678&name=itrat'));
    }
    catch(e){
      print('Error: $e');
    }
    // if (response.statusCode == 200) {
    //   // Do something with the response data
    //   print(1);
    // } else {
    // // Handle error
    // print(2);
    // }
  }
}
