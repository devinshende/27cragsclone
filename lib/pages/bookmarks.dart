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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
            child: ListView(
              children: <Widget>[
                AreaBar("Rodellar - Mascun", 1300,
                    'https://stock.patitucciphoto.com/img-get/I0000lcGtYRsNFBc/s/885/750/15CL0216.jpg'),
                AreaBar("Terradets", 220,
                    'https://bloximages.newyork1.vip.townnews.com/lancasteronline.com/content/tncms/assets/v3/editorial/6/6d/66d15cc2-c7e4-11eb-be9f-07dc2475fe9b/60bea5bc7a6c2.image.jpg?resize=1396%2C1002'),
                AreaBar("Siurana", 2500,
                    'https://awe365.com/wp-content/uploads/2020/04/Helga-Rodellar-rockbusters.net_.jpg'),
                AreaBar("Margalef", 1300,
                    'https://gripped.com/wp-content/uploads/2015/03/ml.jpg'),
                AreaBar("Oliana", 1700,
                    'https://www.planetmountain.com/img/1/70275.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AreaBar extends StatelessWidget {
  const AreaBar(this.name, this.routeCount, this.url);

  final String name;
  final int routeCount;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.network(url, width: 180),
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
                    SizedBox(height: 10),
                    Text("$routeCount routes", style: greyText),
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

class AreaListTile extends StatelessWidget {
  AreaListTile(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
            "https://stock.patitucciphoto.com/img-get/I0000lcGtYRsNFBc/s/885/750/15CL0216.jpg"),
        title: Text(name),
        subtitle:
            Text('A sufficiently long subtitle warrants three lines.\nhi'),
        isThreeLine: true,
      ),
    );
  }
}
