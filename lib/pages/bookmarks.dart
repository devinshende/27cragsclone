import 'package:flutter/material.dart';
import 'package:crags/constants.dart';

class BookmarksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Bookmarks", style: headerText),
      ),
      backgroundColor: Colors.black12,
      body: Container(
        child: Center(
          child: Column(
            children: [
              AreaBar("Rodellar - Mascun"),
              SizedBox(height: 30),
              AreaBar("Terradets"),
            ],
          ),
        ),
      ),
    );
  }
}

class AreaBar extends StatelessWidget {
  const AreaBar(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        children: [
          FittedBox(
            child: Image.network(
                'https://stock.patitucciphoto.com/img-get/I0000lcGtYRsNFBc/s/885/750/15CL0216.jpg'),
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: h3),
                    Text("1220 routes", style: greyText),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
