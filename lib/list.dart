import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Examples'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewWidget()),
                  );
                },
                child: const Text('Show ListView'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListViewBuilderWidget()),
                  );
                },
                child: const Text('Show ListView.builder'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListViewSeparatedWidget()),
                  );
                },
                child: const Text('Show ListView.separated'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListViewCustomWidget(),
                      ));
                },
                child: const Text('Show ListView.custom'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.amber[700],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry C')),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  ListViewBuilderWidget({super.key});

  final List<String> itemList = <String>['Rehan', 'Irsyad', 'Fathir'];
  final List<int> colorsVariant = <int>[500, 600, 700];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView.builder')),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.amber[colorsVariant[index]],
              child: Center(
                child: Text(itemList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ListViewSeparatedWidget extends StatelessWidget {
  ListViewSeparatedWidget({super.key});

  final List<String> itemList = <String>['Data 1', 'Data 2', 'Data 3'];
  final List<Color> colorsVariant = <Color>[
    Colors.pink,
    Colors.pinkAccent,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView.separated')),
      body: SafeArea(
        child: ListView.separated(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              color: colorsVariant[index],
              child: Center(
                child: Text(itemList[index]),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
}

class ListViewCustomWidget extends StatelessWidget {
  ListViewCustomWidget({super.key});

  final List<String> itemList = <String>[
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
    'Item 13',
    'Item 14',
    'Item 15'
  ];
  final List<Color> colors = <Color>[
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.cyan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView.custom')),
      body: SafeArea(
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 100,
                color: colors[index % colors.length],
                child: Center(
                  child: Text(
                    itemList[index],
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            },
            childCount: itemList.length,
          ),
        ),
      ),
    );
  }
}
