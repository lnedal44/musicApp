class URLs {
  final String apiKey = '59c784da60b048b9381c16e6ee8fe274';

  String getSearchUrl(String albumName) {
    return 'http://ws.audioscrobbler.com/2.0/?method=album.search&album=$albumName&api_key=$apiKey&format=json';
  }

  getHeaders() {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    return headers;
  }
}
