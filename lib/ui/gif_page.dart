import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {

  final Map _gitData;

  GifPage(this._gitData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
            _gitData["title"],
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              Share.share(_gitData["images"]["fixed_height"]["url"]);
            },
          )
        ],

      ),
      body: Center(
        child: Image.network(_gitData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
