import 'package:flutter/material.dart';
import 'package:flutter_application_1/whatsapp/tabs/call.dart';
import 'package:flutter_application_1/whatsapp/tabs/camera.dart';
import 'package:flutter_application_1/whatsapp/tabs/chat.dart';
import 'package:flutter_application_1/whatsapp/tabs/status.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () { 

               },
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ), onPressed: () {  },
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALL',
              ),
            ],
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
             Camera(),
             Chats(),
            Status(),
            Call(),
          ],
        ),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
                onPressed: () {  },
                child: Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
              )
            : _tabController.index == 1
                ? FloatingActionButton(
                    onPressed: () {  },
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  )
                : _tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            height: 45.0,
                            width: 45.0,
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              onPressed: () {  },
                              child: Icon(
                                Icons.edit,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          FloatingActionButton(
                            onPressed: () {  },
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    : FloatingActionButton(
                        onPressed: () {  },
                        child: Icon(
                          Icons.add_call,
                          color: Colors.white,
                        ),
                      ));
  }
}
