import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MainScreen(),));
}
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("CONTACTS"),
      ),
      body: ListView(
        children:  [
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            "MY CONTACTS",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: const Text("ANU"),
              //tileColor: Colors.grey,
              subtitle: const Text("9685742036"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 30,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://www.shutterstock.com/image-photo/close-portrait-casually-dressed-handsome-600w-627946895.jpg"),
              ),
              //onTap: ,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("ACHU"),
              //tileColor: Colors.grey,
              subtitle: const Text("9682582036"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 30,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://www.shutterstock.com/image-photo/close-portrait-casually-dressed-handsome-600w-627946895.jpg"),
              ),
              //onTap: ,
            ),
          ),
           const Card(
             child: ListTile(
              title: Text("JOHN"),
              //tileColor: Colors.grey,
              subtitle: Text("8954712563"),
              trailing: Icon(Icons.phone,color: Colors.blue),
              leading: CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg"),
              ),
              //onTap: ,
          ),
           ),
           const Card(
             child: ListTile(
              title: Text("JO"),
              subtitle: Text("89789512563"),
              trailing: Icon(Icons.phone,color: Colors.blue),
              leading: CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg"),
              ),
              //onTap: ,
          ),
           ),
         const Card(
            child:  ListTile(
              title: Text("CHINNU"),
                subtitle: Text("9685741235"),
              trailing: Icon(Icons.phone,color: Colors.blue),
              leading: CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://www.shutterstock.com/image-photo/happy-asian-little-child-girl-600w-644737381.jpg"),
              ),
                          ),
          ),
        ],
      ),
    );
  }
}