import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  DateTime date=DateTime.now();
selectedDate() async {

  DateTime? newDate= await showDatePicker(
    context: context, initialDate: date, 
  firstDate: DateTime(1990), lastDate: DateTime(2030));

  if(newDate==null)return;
  setState(() =>
    date=newDate
  );
} 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Selection"),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
            decoration: InputDecoration(
              hintText: '${date.year}/${date.month}/${date.day} ',

            ),
            onTap: () {
              selectedDate();
            },
            ),
          ],
        ),
      ),

    );
  }
}