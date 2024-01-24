// import 'dart:convert';

// import 'package:absolutemen_app/model/productlist.dart';
// import 'package:http/http.dart' as http;

// List<Products> userData = [];

// // Future fetchProducts() async{
// //   String url='https://api.jsonserve.com/l05JSy';

// //   final response=await http.get(Uri.parse(url));
// //   print(response.body);
// //   final result = jsonDecode(response.body);
// //   print(result);
// //   // return result.map((e)=>Products.fromJson(e)).toList();
// // return result;

// // }


//  Future<List<Products>> getData() async {
//     final response = await http.get(Uri.parse('https://api.jsonserve.com/l05JSy'));
//     var data = jsonDecode(response.body.toString());
// /*jsonDecode is a Dart function provided by dart:convert library used 
//  to convert JSON data, 
//  received from an API or read from a file, into Dart objects.
//  It transforms JSON strings into Dart maps or lists*/

//     if (response.statusCode == 200) {
//       for (Map<String, dynamic> index in data) {
//         userData.add(UserModels.fromJson(index));
//       }
//       return userData;
//     }
//     return userData; //empty list
//   }
// }