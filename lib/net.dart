import 'package:flutter/material.dart';
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(MaterialApp(
  home: ConnectivityScreen()));
}

class ConnectivityScreen extends StatefulWidget {
  const ConnectivityScreen({Key? key}) : super(key: key);

  @override
  State<ConnectivityScreen> createState() => _ConnectivityScreenState();
}


class _ConnectivityScreenState extends State<ConnectivityScreen> {
  final connectivity = Connectivity();
  ConnectivityResult ? connectivityResult;
  StreamSubscription<ConnectivityResult>?cnvSubscription;
   @override
   void initState()
   {
    super.initState();
    cnvSubscription = connectivity.onConnectivityChanged.listen(checkdevicenetwork);
         
   }
   @override
   void dispose(){
    cnvSubscription!.cancel();
    super.dispose();
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("check conn"),
          onPressed: () async {
            final result = await connectivity.checkConnectivity();
          },
          
          ),
      ),


    );
   
  }
  void checkdevicenetwork(ConnectivityResult result)
 {
  if(result==ConnectivityResult.mobile)
{
  showToast("your device is cell $result");
} else if(result==ConnectivityResult.wifi){
  showToast("your device is cell $result");
}
else{
  showToast("your device is cell $result");
}

}
showToast(text){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(text)),
  );

}
}