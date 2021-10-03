import 'package:flutter/material.dart';
import 'package:music/Modals/MusicModal.dart';
import 'package:music/utils/Constants.dart';
import 'package:music/utils/sizeConfig.dart';
import 'package:url_launcher/url_launcher.dart';

class AlbumDetiels extends StatefulWidget {
  final Album album;

  const AlbumDetiels({Key key, this.album}) : super(key: key);

  @override
  _AlbumDetielsState createState() => _AlbumDetielsState();
}

class _AlbumDetielsState extends State<AlbumDetiels> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.album.artist),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: SizeConfig.height * 0.2,
              width: SizeConfig.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.album.image[2].text))),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.width * 0.05),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Album name : '),
                      Text(widget.album.name),
                    ],
                  ),
                  SizedBox(height: SizeConfig.height * 0.01),
                  Row(
                    children: [
                      Text('Album URL : '),
                      InkWell(
                          onTap: () {
                            _launchURL(widget.album.url);
                          },
                          child: Text(
                            'Click here',
                            style: kTextStyleBlue,
                          )),
                    ],
                  ),
                  SizedBox(height: SizeConfig.height * 0.01),
                  Row(
                    children: [
                      Text('MBID : '),
                      Text(widget.album.mbid),
                    ],
                  ),
                  SizedBox(height: SizeConfig.height * 0.01),
                  Row(
                    children: [
                      Text('Streamable : '),
                      Text(widget.album.streamable == "0" ? "No" : "Yes"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
