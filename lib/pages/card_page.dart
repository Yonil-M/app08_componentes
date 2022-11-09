import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Card Page"),
        ),
      body: Column(
        children: [
          Container(
            margin:const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  offset:Offset(4,4),
                  blurRadius: 12.0,
                  ),
              ],
            ),
          child: Column(
            children: [
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              textAlign: TextAlign.center,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,),

              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: double.infinity,
                height: 40.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(18.0),
                  boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(4,4),
                  blurRadius: 6.0,
                  ),],
                ),
                child: Text("follow me",
                style: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),)),

                
            ],
          )
          ),

         Container(
                  margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18.0),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        offset: Offset(4,4),
                        blurRadius: 12.0,
                      )
                    ]
                  ),
                  child: Row(children: [
                  Image.asset("assets/images/imag2.png",
                  height: 120.0,
                  ),
                  Expanded(
                    child: Column(children: [
                      Text("Fiorella guadalupe de las Nieves Azules",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,

                      ),),
                      SizedBox(height: 7.0,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu vitae elementum curabitur vitae nunc. Elementum curabitur vitae nunc sed velit dignissim. Nulla at volutpat diam ut venenatis tellus in metus. Erat velit scelerisque in dictum non consectetur a erat. Mollis aliquam ut porttitor leo a diam sollicitudin tempor id. Nunc congue nisi vitae suscipit. Cras sed felis eget velit aliquet sagittis id consectetur.",
                      style: TextStyle(color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,),
                    ],),
                  )
                  ])
                  ,
                ),

                Container(
                  margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18.0),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        offset: Offset(4,4),
                        blurRadius: 12.0,
                      )
                    ]
                  ),
                  child: Row(children: [
                  Expanded(
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu vitae elementum curabitur vitae nunc. Elementum curabitur vitae nunc sed velit dignissim. Nulla at volutpat diam ut venenatis tellus in metus. Erat velit scelerisque in dictum non consectetur a erat. Mollis aliquam ut porttitor leo a diam sollicitudin tempor id. Nunc congue nisi vitae suscipit. Cras sed felis eget velit aliquet sagittis id consectetur.",
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image.network("https://img.freepik.com/vector-premium/flores-naturaleza-hermosa-ilustracion-vector-dibujos-animados-plana-florero_123673-107.jpg",
                    height: 120.0,),
                  )
                  ])
                  ,
                )

        ],
      ),
      
    );
  }
}