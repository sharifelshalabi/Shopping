import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class ProductsTitle extends StatelessWidget {


  const ProductsTitle({
    @required this.lisImages,
    @required this.itemCount,
    @required this.imgNetwork,
    @required this.description,
    @required this.rating,
    @required this.ratingIcon,
  });

  final List<String> lisImages;
  final int itemCount;
  final Widget imgNetwork;
  final String description;
  final double rating;
  final RatingIcon ratingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        itemCount: itemCount,
        staggeredTileBuilder: (index) =>
            StaggeredTile.fit(1),
        itemBuilder: (context, index) => Card(
          color: Colors.grey[600],
          child: Column(
            children: [
              Container(
                child: imgNetwork,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              Text(
                description,
                maxLines: 2,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      rating.toString(),
                      maxLines: 2,
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          return ratingIcon;
                        },
                        icon: Icon(FontAwesomeIcons.solidHeart),
                      ),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class RatingIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.heart,
      color: Color(0xffff4d4d),
    );
  }
}
