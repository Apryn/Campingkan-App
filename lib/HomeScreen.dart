import 'package:campingkan/DetailScreen.dart';
import 'package:campingkan/_theme.dart';
import 'package:flutter/material.dart';
import 'package:campingkan/Packages/List_Place.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, CampFires",
                              style: regular.copyWith(fontSize: 15)),
                          Text("Let's Star \nYour Journey",
                              style: medium.copyWith(fontSize: 30))
                        ],
                      ),
                      Icon(
                        Icons.fireplace_rounded,
                        color: Colors.orange,
                        size: 65,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final TempatCamping place = TempatCampingList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(
                            place: place,
                          );
                        }));
                      },
                      child: Card(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 1, child: Image.asset(place.image!)),
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(place.name!,
                                        style: medium.copyWith(fontSize: 16)),
                                    Text(
                                      place.namePLace!,
                                      style: regular,
                                    )
                                  ],
                                ),
                              ))
                        ],
                      )),
                    );
                  },
                  itemCount: TempatCampingList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

bool isFavorite = false;

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
      color: Colors.red,
      iconSize: 40,
    );
  }
}
