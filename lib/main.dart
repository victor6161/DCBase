import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('SettingsPage'),
        ),
        body: new Center(
            child: new Text('Settings')
        )
    );
  }
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "DOCS"),
                Tab(text: "IDENTITIES"),
                Tab(text: "WALLETS"),
              ],
            ),
            title: Text('DC Base'),
          ),
          body: TabBarView(
            children: [
              new CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.all(20.0),
                    sliver: new SliverGrid.count(
                      mainAxisSpacing: 1.0,
                      crossAxisSpacing: 500.0,
                      childAspectRatio: 6.5,
                      crossAxisCount: 1,
                      children: <Widget>[
                        new ListTile(
                            title: const Text('Document 1'),
                            subtitle: const Text('15:57'),
                            enabled: true,
                            onTap: () { /* react to the tile being tapped */ }
                        ),
                        new ListTile(
                            title: const Text('Document 2'),
                            subtitle: const Text('15:57'),
                            enabled: true,
                            onTap: () { /* react to the tile being tapped */ }
                        ),
                        new ListTile(
                            title: const Text('Document 3'),
                            subtitle: const Text('15:57'),
                            enabled: true,
                            onTap: () { /* react to the tile being tapped */ }
                        ),
                        new ListTile(
                            title: const Text('Document 4'),
                            subtitle: const Text('15:57'),
                            enabled: true,
                            onTap: () { /* react to the tile being tapped */ }
                        ),
                        new ListTile(
                            title: const Text('Document 5'),
                            subtitle: const Text('15:57'),
                            enabled: true,
                            onTap: () { /* react to the tile being tapped */ }
                        ),
                        new ListTile(
                            title: const Text('Document 6'),
                            subtitle: const Text('15:57'),
                            enabled: true,
                            onTap: () {
                                  () => Navigator.of(context).pushNamed('/settings');
                            }
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              new CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.all(20.0),
                    sliver: new SliverGrid.count(
                      crossAxisSpacing: 10.0,
                      crossAxisCount: 2,
                      children: <Widget>[
                        const Text('He\'d have you all unravel at the'),
                        const Text('Heed not the rabble'),
                        const Text('Sound of screams but the'),
                        const Text('Who scream'),
                        const Text('Revolution is coming...'),
                        const Text('Revolution, they...'),
                      ],
                    ),
                  ),
                ],
              ),
              new CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.all(20.0),
                    sliver: new SliverGrid.count(
                      crossAxisSpacing: 10.0,
                      crossAxisCount: 1,
                      children: <Widget>[
                        const Text('He\'d have you all unravel at the'),
                        const Text('Heed not the rabble'),
                        const Text('Sound of screams but the'),
                        const Text('Who scream'),
                        const Text('Revolution is coming...'),
                        const Text('Revolution, they...'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

        ),
      ),
      routes: <String, WidgetBuilder>{
        '/settings': (BuildContext context) => new SettingsPage(),
      },
    );
  }
}