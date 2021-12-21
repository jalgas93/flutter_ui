import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget TravelCard(
    String imgUrl, String hotelName, String location, int rating) {
  return Card(
    margin: EdgeInsets.only(right: 22),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    elevation: 0.0,
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
            scale: 2.0,
          ),
        ),
        width: 200.0,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  for (var i = 0; i < rating; i++)
                    Icon(
                      Icons.star,
                      color: Color(0xFFFE8C68),
                    ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelName,
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
