import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu_rounded, size: 40),
                    Column(
                      children: [
                        Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon((Icons.favorite_border_rounded)),

          )
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Text(
                  "Type your location!!",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff3C4657)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Tokyo,Japan",
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 35,
                            color: Color(0xff3C4657),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2.4, color: Color(0xff3C4657)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2.4, color: Color(0xff3C4657)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff3C4657),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 50,
                      width: 50,
                      child: const Icon(Icons.filter_alt,
                          size: 35, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
             
              // SizedBox(
              //   height: 15,
              // ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                height: 270,
                width: double.infinity,
                      child: InkWell(
                      onTap: () {
                                },
                      child: Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image:NetworkImage("https://www.vgchartz.com/articles_media/images/tokyo-disneyland-gets-kingdom-hearts-themed-hotel-rooms-4.png"),
                              fit: BoxFit.fill
                              ),
                        ),
                        child: Stack(children: [
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Column(
                              
                              children: [
                                Text("\$40" ,  
                                     style: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                        Text("Awesome room near Tokyo",
                                        style: const TextStyle(
                                            fontSize: 22, color: Colors.black),   ),
                                            Text('Tokyo, Japan', style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),),
                                            
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                      )
                      ),
                    
                  
              
              ),
        
              
              
              ],
          ),
        ),
      ),
    );
  }
}