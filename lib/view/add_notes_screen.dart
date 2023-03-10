import 'package:flutter/material.dart';
import 'package:note_pad/view/home_screen.dart';

class AddNotesScreen extends StatelessWidget {
  const AddNotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: IconButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  hintText: 'tittle',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: TextFormField(
                  maxLines: 30,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lime,
                        width: 50,
                      )
                    ),
                    hintText: 'Enter your Notes',
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
