import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Input page"),backgroundColor: Colors.amber,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(
              hintText: "Nombre Completo",
              hintStyle:TextStyle(color: Colors.blue),
              label: Text("Nombre Completo"),
              icon: Icon(Icons.verified_user_sharp),
              suffixIcon: Icon(Icons.location_city_rounded),
              prefixIcon: Icon(Icons.abc_outlined)
            ),
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            textAlign: TextAlign.start,
            ),
SizedBox(height: 20.0,),
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar Productos",
                prefixIcon: Icon(Icons.search_outlined),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              ),

              onChanged: (String value) {
                print(value);
              }),
            SizedBox(height: 20.0,),



            //tercer field
            Container(
              decoration: BoxDecoration(
                boxShadow:[ BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,

                ),]
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar Productos...",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: Colors.black38,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Container(

                    decoration: BoxDecoration(
                     color: Colors.greenAccent, 
                     borderRadius: BorderRadius.horizontal(right: Radius.circular(20.0)),
                    ),
                    
                    child: Icon(Icons.search,color: Colors.white,)),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      width: 0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 3.0,
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
}