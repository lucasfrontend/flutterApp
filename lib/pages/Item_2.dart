import 'package:flutter/material.dart';

class Item_2 extends StatelessWidget {
  const Item_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('avatares'),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: (){
                //abrir algo
              },
              child: const CircleAvatar(
                backgroundColor: Colors.black12,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundColor: Colors.black12,
              child: Text('LM'),
              ),
          )
        ],
      ),
      body: Center(
        child: Image.network('https://scontent.faep1-1.fna.fbcdn.net/v/t1.18169-9/13590367_10209590482940113_1374771010547161280_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OAlBSRwMOToAX_YfJio&tn=bKilL2iJ8sFJBF40&_nc_ht=scontent.faep1-1.fna&oh=00_AfCqVKlBJmsVUAn1aswqj8om_Snp1ErvPfkS6HXJsYfdDA&oe=63A60BE7')
        )
    );
  }
}