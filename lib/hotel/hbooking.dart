
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(home: HotelBookingPage(),));
}
class Hotel {
  String? imageUrl;
  String? title;
  String? description;
  int? price;
  double? rating;

  Hotel({this.description, this.imageUrl, this.price, this.rating, this.title});
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/liv.jpg',
    title: 'LIv',
    description: 'A Five Star Hotel in Thailand',
    price: 200,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assets/images/room2.jpg',
    title: 'Hilton Hua HIn ',
    description: 'A five star Hotel in Thailand',
    price: 180,
    rating: 5,
  ),
  Hotel(
    imageUrl: 'assets/images/room3.jpg',
    title: 'Amari Waterbage,Bangkok',
    description: 'A five Star hotel in Bangkok',
    price: 190,
    rating: 3.5,
  ),
  Hotel(
    imageUrl: 'assets/images/room2.jpeg',
    title: 'Marriot',
    description: 'A Five star hotel in Thailand',
    price: 180,
    rating: 4.5,
  )
];

class HotelBookingPage extends StatefulWidget {

  @override
  _HotelBookingPageState createState() => _HotelBookingPageState();
}

class _HotelBookingPageState extends State<HotelBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'Hello @SUBI',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Find Your Favouriate Hotel',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://t3.ftcdn.net/jpg/03/41/52/70/240_F_341527061_N39UNqSXBGJ5Ozv5AlzoNxpBaUZ7Svzf.jpg'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 4),
                          blurRadius: 10.0)
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10.0),
        
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFEFEDEE),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 10.0),
                      blurRadius: 10.0)
                ],
              ),
              child: Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search For Hotel',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //popular hotel
          const SizedBox(
            height: 30.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Popular Hotel',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              itemCount: hotels.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 4.0),
                        blurRadius: 10.0,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 140.0,
                        width: 170.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(hotels[index].imageUrl!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          hotels[index].title!,
                          style: const TextStyle(fontSize: 14.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          hotels[index].description!,
                          style: const TextStyle(fontSize: 13.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '\$${hotels[index].price} / night',
                              style: const TextStyle(color: Colors.blue),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '${hotels[index].rating}',
                                  style: const TextStyle(color: Colors.blue),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                  size: 16.0,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Hotel Packages',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
                Text(
                  'View all',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Column(
            children: <Widget>[
              _hotelPackage(0),
              const SizedBox(height: 20),
              _hotelPackage(1),
              const SizedBox(height: 20),
              _hotelPackage(2),
              const SizedBox(height: 20),
              _hotelPackage(3),
            ],
          )
        ],
      ),
    );
  }
}

_hotelPackage(int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 4.0),
            blurRadius: 10.0,
          )
        ],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              height: 130,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: AssetImage(hotels[index].imageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  hotels[index].title!,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  hotels[index].description!,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '\$${hotels[index].price} / night',
                  style: const TextStyle(fontSize: 16, color: Colors.blue),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.directions_car,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.hot_tub,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.local_bar,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.wifi,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 300,
            child: Center(
             
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15.0,
                      offset: Offset(2.0, 4.4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: .1),
                  ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    ),
  );
}