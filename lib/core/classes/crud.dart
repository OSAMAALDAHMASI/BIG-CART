import 'dart:convert';
import 'dart:io';

import 'package:big_cart/core/Api/api_link.dart';
import 'package:big_cart/core/Functions/check_internet.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:big_cart/core/services/myservices.dart';
import 'package:big_cart/main.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
// import 'package:heal_me/Core/Class/status_request.dart';
// import 'package:heal_me/Core/Functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  MyServices c = Get.put(MyServices());

  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data,
      {String myToken = ""}) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
            Uri.parse(
              linkUrl,
            ),
            body: data);

        print("response Crud");
        print(response.statusCode);

        print(response.body.toString());
        if (response.statusCode >= 200 || response.statusCode != 404) {
          Map responseBody = jsonDecode(
            response.body,
          );
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverfailure);
    }
  }

  Future<Either<StatusRequest, Map>> postMapData(String linkUrl, Map data,
      {String myToken = ""}) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
            Uri.parse(
              linkUrl,
            ),
            headers: {
              HttpHeaders.authorizationHeader: c.sharedPref.getString('token')!
            },
            body: data);

        print("response Crud");
        print(response.statusCode);

        print(response.body.toString());
        if (response.statusCode >= 200 || response.statusCode != 404) {
          Map responseBody = jsonDecode(
            response.body,
          );
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverfailure);
    }
  }
//   Future<Either<StatusRequest, Map>> getData(String linkUrl, {String myToken=""}) async {
//     try {
//       if (await checkInternet()) {
//         var response = await http.get(
//             Uri.parse(
//               linkUrl,
//             ),
//             headers: {
//               HttpHeaders.authorizationHeader:
//               c.sharedPref.getString('token') ?? myToken
//             },
//            );
// print("response Crud");
// // print(response.l);
// print(response.statusCode);
// print(response.body.toString());
//         if (response.statusCode >= 200 || response.statusCode != 404) {
//           Map responseBody = jsonDecode(
//             response.body,
//           );
//           return Right(responseBody);
//         } else {
//           return const Left(StatusRequest.serverfailure);
//         }
//       } else {
//         return const Left(StatusRequest.offlinefailure);
//       }
//     } catch (e) {
//       print("catch");
//       print("$e");
//       return const Left(StatusRequest.serverfailure);
//
//
//     }
//   }

  Future<Either<StatusRequest, List<dynamic>>> getData(String linkUrl,
      {String myToken = ""}) async {
    try {
      // print("response Crud get");
      if (await checkInternet()) {
        print(checkInternet());
        var response = await http.get(
          Uri.parse(linkUrl),
          headers: {
            HttpHeaders.authorizationHeader:
                c.sharedPref.getString("token") ?? ""
            // "Bearer 9|Kh1toMFgkHETcdxedz9BDFet1BNXEt1Qd1N8sJo286fc6d7f",
          },
        );

        print("response Crud get");
        print(response.statusCode);
        print(response.body.toString());

        if (response.statusCode >= 200 || response.statusCode < 406) {
          List<dynamic> responseBody = jsonDecode(response.body);
          print(responseBody);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverfailure);
    }
  }

  Future<Either<StatusRequest, Map<String, dynamic>>> getProductData(
      String linkUrl,
      {String myToken = ""}) async {
    try {
      if (await checkInternet()) {
        var response = await http.get(
          Uri.parse(linkUrl),
          headers: {
            HttpHeaders.authorizationHeader:
                c.sharedPref.getString("token") ?? ""

            // "Bearer 9|Kh1toMFgkHETcdxedz9BDFet1BNXEt1Qd1N8sJo286fc6d7f",
          },
        );

        print("response Crud product");
        print(response.statusCode);
        print(response.body.toString());

        if (response.statusCode >= 200 || response.statusCode < 300) {
          dynamic responseBody = jsonDecode(response.body);
          Map<String, dynamic> data = Map<String, dynamic>.from(responseBody);
          return Right(data);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverfailure);
    }
  }
}
//   Future<Either<StatusRequest, List<Map<String, dynamic>>>> getData(
//       String linkurl) async {
//     try {
//       if (await checkInternet()) {
//         var headersList = {
//           'Accept': '*/*',
//           'Authorization': c.sharedPref.getString('token') ?? ""
//         };
//         var url = Uri.parse(linkurl);

//         var req = http.Request('GET', url);
//         req.headers.addAll(headersList);

//         var res = await req.send();
//         final resBody = await res.stream.bytesToString();

//         if (res.statusCode >= 200 && res.statusCode < 404) {
//           List<Map<String, dynamic>> responseBody = jsonDecode(resBody);
//           // print();
//           return Right(responseBody);
//         } else {
//           return Left(StatusRequest.serverfailure);
//         }
//         // var response = await http.get(
//         //   Uri.parse(linkurl),
//         //   headers: {
//         //     HttpHeaders.authorizationHeader:
//         //         c.sharedPref.getString('token') ?? "",
//         //   },

//         // );
//         // if (response.statusCode == 200 || response.statusCode == 404) {
//         //   // response.request('get',url)
//         //   var responsebody = await jsonDecode(response.body);
//         //   return Right(responsebody);
//         // } else {
//         //   return left(StatusRequest.serverfailure);
//         // }
//       } else {
//         return const Left(StatusRequest.offlinefailure);
//       }
//     } catch (e) {
//       return const Left(StatusRequest.serverfailure);
//     }
//     // if (await chickIntrnet()) {

//     // if (response.statusCode >= 200 || response.statusCode != 404) {
//     //   Map responseBody = jsonDecode(
//     //     response.body,
//     //   );
//     //   return Right(responseBody);
//     // } else {
//     //   return const Left(StatusRequest.serverfailure);
//     // }
//     // } else {
//     //   return left(StatusRucust.offlinefaliure);
//     // }
//   }
// }

