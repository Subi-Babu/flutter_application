import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Staggeredview extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredStyle = const [
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
     
    ];

    List<stag> tiles = const [
      stag(
          url:
              'https://images.pexels.com/photos/257352/pexels-photo-257352.jpeg?auto=compress&cs=tinysrgb&w=600',
          title: 'Rocks Formation',
          subtitle: 'Kelly'),
      stag(
          url:
              'https://images.unsplash.com/photo-1512850183-6d7990f42385?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
          title: 'Besides Trees and houses',
          subtitle: 'Carl Sagar'),
      stag(
          url:
              'https://images.pexels.com/photos/3813491/pexels-photo-3813491.jpeg?cs=srgb&dl=pexels-lisa-fotios-3813491.jpg&fm=jpg&_gl=1*if480k*_ga*NjkyODEwNTA3LjE2Njg2MDc4Mjg.*_ga_8JE65Q40S6*MTY2ODY3MDc1My4zLjEuMTY2ODY3MDg2NC4wLjAuMA..',
          title: 'man in greenjacket walkingon sidewalk',
          subtitle: 'Nichole'),
     stag(
          url:
              'https://images.pexels.com/photos/13336772/pexels-photo-13336772.jpeg?cs=srgb&dl=pexels-maria-loznevaya-13336772.jpg&fm=jpg&_gl=1*12nuerm*_ga*NjkyODEwNTA3LjE2Njg2MDc4Mjg.*_ga_8JE65Q40S6*MTY2ODY3MDc1My4zLjAuMTY2ODY3MDc1My4wLjAuMA..',
          title: 'Nature Beauty',
          subtitle: 'Maria Losenvaya'),
          ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          staggeredTiles: _staggeredStyle,
          children: tiles,
        ),
      ),
    );
  }
}

class stag extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  const stag({
    Key? key,
    required this.url,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.network(url),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(subtitle),
                ],
              ),
            )
          ],
        ));
  }
}