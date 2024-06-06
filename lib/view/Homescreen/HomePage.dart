import 'package:flutter/material.dart';
import 'package:work12/view/Homescreen/widget/gridpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.location_on),
        title:Text("Ernakulam City") ,
        actions: [Icon(Icons.sort)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Find The",style: TextStyle(
                    fontSize: 25,color: Colors.grey
                  ),),
                ),
                SizedBox(width: 5,),
                Text("Best", style: 
                TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Food",style: 
                  TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                ),
                SizedBox(width: 5,),
                Text("Around You",style: TextStyle(
                    fontSize: 25,color: Colors.grey
                  ), ),
                
              ],
              
            ),
            SizedBox(height: 10,),
            Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 218, 215, 215), 
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: const [
        Icon(Icons.search),
        SizedBox(width: 10),
        Expanded(child: Text('Search your favourite food')),
        SizedBox(width: 10),
        Icon(Icons.tune),
            ],
          ),
          
        ),
        SizedBox(height: 30,),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                      'Find',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
              ),
            ),
            SizedBox(width: 10),
            Text(
        '5km',
        style: TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.w500,
        ),
            ),
            Icon(
        Icons.keyboard_arrow_right,
        color: Colors.orange,
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Text(
          'Salads',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
            ),
            Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        decoration: BoxDecoration(
          color:Color.fromARGB(255, 218, 215, 215),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Text(
          'Hot Sale',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
            ),
            Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 218, 215, 215), 
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Text(
          'Popularity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
            ),
          ],
        ),
        
      SizedBox(height: 10),
GridView.builder(
  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    childAspectRatio: 0.69,
  ),
  itemBuilder: (context, index) {
    return GridPage();
  },
  itemCount: 6,
),

          ]
        ),
      ),
    );
  }
}