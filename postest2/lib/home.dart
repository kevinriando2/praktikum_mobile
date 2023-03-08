import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  Widget container() {
    return Container(
            width: 400,
            height: 400,
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/jayayaya.png"),
                ),
            ),
    );        
  }

  Widget container2() {
    return Container(
          width: 250,
          height: 100,
          decoration: BoxDecoration(

           color: Colors.black,
           borderRadius: BorderRadius.circular(20),
           border: Border.all(
            color: Colors.red,
            width: 3,
           ),  
          ),
          child: Center(
            child: Text("Selamat Datang",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
        ),
    );        
  }

  Widget container3() {
    return Container(
          width: 400,
          height: 100,
          child: Center(
            child: Text("oleh Kevin Riando",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            ),
        ),
    );        
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bike Shop Jaya'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  container(),
                  container2(),
                  container3(),
                ],
              ),          
              ),
            
      ], ),
    ), );
  }
}