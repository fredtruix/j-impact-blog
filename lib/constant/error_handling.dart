import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jimpact/constant/utils.dart';

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onsuccess,
}) {
  switch (response.statusCode) {
    case 201:
      onsuccess();
      break;
    case 200:
      onsuccess();
      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body)['error'], Colors.red);
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)['error'], Colors.red);
      break;
    default:
      showSnackBar(context, response.body, Colors.red);
  }
}
