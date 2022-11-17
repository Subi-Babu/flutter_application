import 'package:flutter/material.dart';
import 'package:flutter_application_1/Staggered2/place.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import 'placeitem.dart';

class Homestagg extends StatelessWidget {
 final placelist = place.genplaces();
  @override
  Widget build(BuildContext context) {
      return  Container(
       padding: EdgeInsets.all(20),
   child: StaggeredGridView.countBuilder(
  shrinkWrap: true,
  physics: ScrollPhysics(),
  crossAxisSpacing: 16,
  mainAxisSpacing: 16,
  itemCount: placelist.length,
    crossAxisCount: 2,
     itemBuilder: (context, index) => placeitem(placelist[index]), 
     staggeredTileBuilder: (_)=>StaggeredTile.fit(2)),
      

    );
      
      
      
      
      }
}