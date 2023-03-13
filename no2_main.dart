import 'package:flutter/material.dart';


void main() {
 runApp(const MyApp());
}


class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);
 @override
 MyAppState createState() {
   return MyAppState();
 }
}


class MyAppState extends State<MyApp> {
  @override
  int idx = 0; //index yang aktif


  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
            leading: FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: Text('Quiz Flutter'),
            actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                    height: 180,
                    width: double.infinity,
                    child: Image.network("https://plus.unsplash.com/premium_photo-1666262369867-6e521a979afb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1073&q=80", fit: BoxFit.fitWidth,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Activity", style: TextStyle(color: Colors.white, fontSize: 80, fontWeight: FontWeight.w600),)
                      ],
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle, color: Colors.black, size: 100,),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text("No New Notifications", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),),
                    ),
                    Text("You're caught up! Checkback for noifications, campus alert and more", style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    )
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                        child: Text("Campus Alert", style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.w600),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text("Notifikasi ke-0", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    )
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                        child: Text("Campus Alert", style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.w600),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text("Notifikasi ke-1", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    )
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                        child: Text("Campus Alert", style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.w600),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text("Notifikasi ke-2", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    )
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                        child: Text("Campus Alert", style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.w600),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text("Notifikasi ke-3", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    )
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                        child: Text("Campus Alert", style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.w600),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text("Notifikasi ke-4", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ),

            ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          onTap: onItemTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.navigation), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notification_add), label: 'Activity'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
      ),
    );
  }
}


class ButtonNamaKelompok extends StatelessWidget {
 const ButtonNamaKelompok({Key? key}) : super(key: key);


 @override
 Widget build(BuildContext context) {
   return IconButton(
     icon: Icon(Icons.account_circle_rounded),
     onPressed: () {
       // icon account di tap
       showDialog<String>(
         context: context,
         builder: (BuildContext context) => AlertDialog(
           title: const Text('Nama Kelompok'),
           content: const Text('Nama (azkaatqiya4@upi.edu) ; Nama (basalamahalam@upi.edu)'),
           actions: <Widget>[
             TextButton(
               onPressed: () => Navigator.pop(context, 'OK'),
               child: const Text('OK'),
             ),
           ],
         ),
       );
     },
   );
 }
}


class ButtonPerjanjian extends StatelessWidget {
 const ButtonPerjanjian({Key? key}) : super(key: key);
 @override
 Widget build(BuildContext context) {
   return IconButton(
     icon: Icon(Icons.access_alarm_rounded),
     onPressed: () {
       // icon setting ditap
       const snackBar = SnackBar(
         duration: Duration(seconds: 20),
         content: Text('Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
       );
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
     },
   );
 }
}