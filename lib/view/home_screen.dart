

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'NotePad',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 50,
              child: TextField(
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  //contentPadding: const EdgeInsets.all(20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search_rounded),
                  prefixIconColor: Colors.black54,
                  fillColor: Colors.grey,
                  filled: true,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => buildItem(context, index),
              separatorBuilder: (context, index) => Container(height: 10,),
              itemCount: 10,
            ),
          )
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildItem(context, int index) =>
      InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.primaries[index]
                  .withOpacity(0.8),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'GO To School',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "2023-3-3 10:10 PM",
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodySmall,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
      );
}
