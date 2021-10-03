import 'package:flutter/material.dart';
import 'package:music/Modals/MusicModal.dart';
import 'package:music/utils/Constants.dart';
import 'package:music/utils/sizeConfig.dart';

import '../Provider.dart';
import 'AlbumDetiles.dart';

class AlbumListScreen extends StatefulWidget {
  const AlbumListScreen({Key key}) : super(key: key);

  @override
  _AlbumListScreenState createState() => _AlbumListScreenState();
}

class _AlbumListScreenState extends State<AlbumListScreen> {
  bool isSearch = false;
  bool loading = false;
  String searchToShow = 'Search for album to show';
  var albums = [];
  TextEditingController searchController = new TextEditingController();
  MusicModal modelObject;
  int resultsLength = 0;

  getAlbums() {
    AlbumProvider.getAlbumsProvider(searchController.text).then((value) {
      setState(() {
        modelObject = MusicModal.fromJson(value);
        print(
            'modelObject length ${modelObject.results.albummatches.album.length}');
        resultsLength = modelObject.results.albummatches.album.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: isSearch ? searchBox() : Text('Albums List'),
        actions: [
          IconButton(
            icon: Icon(isSearch ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                isSearch = !isSearch;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              resultsLength > 0
                  ? Container(
                      height: SizeConfig.height,
                      child: ListView.builder(
                        itemCount: resultsLength,
                        itemBuilder: (context, i) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlbumDetiels(
                                        album: modelObject
                                            .results.albummatches.album[i])),
                              );
                            },
                            child: ListTile(
                              title: Text(modelObject
                                  .results.albummatches.album[i].name),
                              subtitle: Text(modelObject
                                  .results.albummatches.album[i].artist),
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(modelObject
                                    .results
                                    .albummatches
                                    .album[i]
                                    .image[1]
                                    .text),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : Text(
                      searchToShow,
                      style: kTextStyleBlackLarge,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Padding searchBox() {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.width * 0.05),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: Colors.blue.shade100,
          border: OutlineInputBorder(),
          labelText: 'Search for Album',
          suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                getAlbums();
              }),
        ),
      ),
    );
  }
}
