import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUI extends StatelessWidget {
  const ContactUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.black),
        actionsIconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("Contacts",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext ctx, int index){
          return Column(
            children: [


              ListTile(

                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 30,
                  child: Icon(Icons.people,size: 40,color: Colors.white,),
                ),
                title: Text('Person ${index+1}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                subtitle: Text('+91 985623781${index}',style: TextStyle(fontSize: 15),),
                trailing: Wrap(
                  children: [
                    Icon(Icons.sms,color: Colors.blue,),
                    SizedBox(width: 20,),
                    Icon(Icons.phone,color: Colors.green,)
                  ],
                ),
              ),
              Divider(color: Colors.grey,height: 10,),
            ],
          );

        },

        ),
      ),
    );
  }
}