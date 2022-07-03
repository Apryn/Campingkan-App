import 'package:campingkan/HomeScreen.dart';
import 'package:campingkan/Packages/List_Place.dart';
import 'package:campingkan/_theme.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final TempatCamping place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                  color: Colors.yellow,
                  width: double.infinity,
                  child: Image.asset(
                    place.image!,
                    fit: BoxFit.cover,
                  ))),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.name!,
                              style: medium.copyWith(fontSize: 22),
                            ),
                            Text(place.namePLace!,
                                style: medium.copyWith(fontSize: 14)),
                          ],
                        ),
                        FavoriteButton()
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Description :", style: regular),
                    ),
                    Text(
                      place.description!,
                      style: regular,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Starting From",
                      style: medium.copyWith(color: Colors.white, fontSize: 15),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text(
                          "No Space",
                          style: regular.copyWith(color: Colors.black),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
