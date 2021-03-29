import 'package:flutter/material.dart';
import 'package:grocery/views/appbarmain.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       leading: Icon(Icons.widgets_outlined,color: Colors.green,size: 30,),
       elevation: 1,
       title: Column(

         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Deliver to",style: TextStyle(fontSize: 18.0,color: Colors.black,),),
           Text("Dhaka, Bangladesh",style: TextStyle(fontSize: 12.0,color: Colors.black,),),
         ],
       ),
       actions: [
         Center(
           child: Stack(
             children: [
               Icon(Icons.card_travel,size: 30,color: Colors.black,),
               Positioned(
                   right: 0,
                   child: CircleAvatar(
                     radius: 5.0,
                     backgroundColor: Colors.green,
                   ))
             ],
           ),
         ),
         IconButton(icon: Icon(Icons.search,size: 30,color: Colors.black,), onPressed: (){}),
       ],
     ),
      body: Column(
        children: [
          SizedBox(
            height: size.height/15,
          ),
         Expanded(

           child: Padding(
             padding: const EdgeInsets.all(12.0),
             child: Column(
               children: [
                 GridView.builder(
                     physics: BouncingScrollPhysics(),
                     itemCount: 6,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisSpacing: 10,
                         mainAxisSpacing: 10,
                         childAspectRatio: 1,
                         crossAxisCount: 3),
                     itemBuilder: (_,index){
                       return ItemCetagory();
                     }),
               ],
             )
           ),
         ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Daily item",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                Text("View All",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          DailyItems(),

        ],
      ),
    );
  }
}
class ItemCetagory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: 500,
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Image.asset('assets/image/category/diet.png'),
            ),
            Text("Food items",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}

class DailyItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.red[200],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/image/product/oil.png'),
            ),
            Text("Food items",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}

