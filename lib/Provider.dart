import 'dart:convert';

import 'package:http/http.dart' as http;

import 'URLs.dart';

class AlbumProvider {
  static Future getAlbumsProvider(String album) async {
    var headers = URLs().getHeaders();
    var request = http.Request('GET', Uri.parse(URLs().getSearchUrl(album)));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      String x = await response.stream.bytesToString();
      var list = json.decode(x);
      print('list getAlbumsProvider $list');
      return list;
    } else {
      print('getAlbumsProvider' + await response.stream.bytesToString());
      print(response.reasonPhrase);
      return [];
    }
  }
}
