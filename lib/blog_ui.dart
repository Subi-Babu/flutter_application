
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MaterialApp(   
    home: BlogHomeOnePage(),
  ));
}
final List<Map> articles = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Think About Why You Want?",
    "author": "Arun Thomas",
    "time": "5  min read",
  },
  {
    "title": "Identify Strong Branding Opportunities.",
    "author": "Niche J",
    "time": "10 min read",
  },
  
  {
    "title": "Journaled Journeys",
    "author": "Kelly Martin",
    "time": "6 min read",
  },
  {
    "title": "Take a Break and Try Something New?",
    "author": "John Louis",
    "time": "7 min read",
  },
    {
    "title": "The Millennial Money Man",
    "author": "Cathrine Martt",
    "time": "4 min read",
  },
  
];

class BlogHomeOnePage extends StatelessWidget {
  
  final Color primaryColor = const Color(0xfED22192);
  final Color bgColor = const Color(0xffa9E0E3);
  final Color secondaryColor = const Color(0xff324558);

  const BlogHomeOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Theme(
        data: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(color: secondaryColor),
            actionsIconTheme: IconThemeData(
              color: secondaryColor,
            ),
            toolbarTextStyle: TextTheme(
              subtitle1: TextStyle(
                color: secondaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ).bodyText2,
            titleTextStyle: TextTheme(
              subtitle1: TextStyle(
                color: secondaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ).headline6,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Categories',
              style: TextStyle(color: Colors.black),
            ),
            leading: const Icon(Icons.category),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: primaryColor,
              indicatorColor: primaryColor,
              unselectedLabelColor: secondaryColor,
              tabs: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("For You"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Design"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Beauty"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Education"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Entertainment"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _buildArticleItem(index);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16.0),
              ),
              const Text("DESIGNSS"),
              const Text("BEAUTYSS"),
              const Text("EDUCATION"),
              const Text("ENTERTAINMENT"),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.folderOpen),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArticleItem(int index) {
    Map article = articles[index];
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            color: bgColor,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: 80.0,
                  child: const Image(
                   image: NetworkImage("https://images.pexels.com/photos/1366630/pexels-photo-1366630.jpeg?cs=srgb&dl=pexels-max-andrey-1366630.jpg&fm=jpg&_gl=1*w396ic*_ga*NjkyODEwNTA3LjE2Njg2MDc4Mjg.*_ga_8JE65Q40S6*MTY2ODcwNDM2Mi40LjEuMTY2ODcwNDQyMy4wLjAuMA..",
                   ),fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        article["title"],
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: primaryColor,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                                text: article["author"],
                                style: const TextStyle(fontSize: 16.0)),
                            const WidgetSpan(
                              child: SizedBox(width: 20.0),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                              text: article["time"],
                            ),
                          ],
                        ),
                        style: const TextStyle(height: 2.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}