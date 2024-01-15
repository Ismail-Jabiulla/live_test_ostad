import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 1.4,
              crossAxisCount: (orientation == Orientation.portrait) ? 1 : 2),
          itemBuilder: (BuildContext context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16)
              ),
              
              child: Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16)
                      ),

                      child: Center(child: Text('News Image')),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
