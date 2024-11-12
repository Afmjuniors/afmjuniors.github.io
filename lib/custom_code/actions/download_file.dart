// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions
import 'package:flutter/foundation.dart'
    show consolidateHttpClientResponseBytes;
import 'index.dart'; // Imports other custom actions
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:html' as html;

Future<String> downloadFile(
  String url,
  String fileName,
) async {
  // download an file from url for my web app
  String t = "";
  try {
    final response = await http.get(Uri.parse(url));

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Create a blob from the response body
      final blob = html.Blob([response.bodyBytes]);

      // Create an object URL for the blob
      final url = html.Url.createObjectUrlFromBlob(blob);

      // Create a download anchor element
      final anchor = html.AnchorElement(href: url)
        ..setAttribute("download", fileName)
        ..click();

      // Clean up by revoking the object URL
      html.Url.revokeObjectUrl(url);
    }
    return "Done";
  } catch (e) {
    print(t + ' Error downloading file: $e');
    return t + e.toString();
  }
}
