import 'package:flutter/material.dart';
import 'package:food_app/home_page.dart';
import 'package:get/get.dart';
import 'package:food_app/main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String>  texts1 =[
    "Wanna Cook\nSomething Delicious",
    "Wanna try\nSomething yummy",
    "Wanna tast\nSomething good"
  ];

   List <String> texts2=["Let's try our best recipe\n simple to make and tasty",
   "Let's try our best recipe\n simple to make and tasty",
   "Let's try our best recipe\n simple to make and tasty"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height:double.maxFinite,
        child: Stack(
          children: [
        Positioned(
           right: 0, left:0,
          child: Container(
            width: double.maxFinite,
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/food.jpg"),
                fit:BoxFit.cover)
            ),
            )
            ),

            Positioned(
              top:300,
              child: Container(
                 width: MediaQuery.of(context).size.width,
                  height: 500,
                  padding: const EdgeInsets.only(top:50, left:20, right:20, bottom:100),
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.only(
                  //  topLeft: Radius.circular(200),
                    topRight: Radius.circular(80),
                    topLeft:Radius.circular(80),
                  )
                ),
               

                child: 
                Column(
                  children: [
                    Container(
                      height: 300,
                      child: PageView.builder(
                         scrollDirection: Axis.horizontal,
                          itemCount: 3,
                         
       
                        itemBuilder: (_,index){
            return Container(
                          padding: const EdgeInsets.only(left:30, right:30 , top:100),
                         width:200,
                         height: 90,
                         child: Center(
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Center(child: Text( texts1[index], style: TextStyle(color: Colors.white, fontSize: 30))),
                            SizedBox(height: 10,),
                            Center(child: Text(texts2[index],style: TextStyle(color: Colors.white, fontSize: 15))),
                             SizedBox(height: 40,),
                             Container(
                              padding: const EdgeInsets.only(left:120),
                               child: Row(
                                
                                children: List.generate(3, (indexDots){
                      return Container(
                        margin: const EdgeInsets.only(right: 2),
                      height: 10,
                      width: index==indexDots?25:8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index==indexDots?Colors.white:Colors.white.withOpacity(0.3),
                      ),
      
                      );
                                }
                               ),
                               ),
                             ),
                           ]
                           ),
                         ),
        
                      );
                        }
                      ),
                    ),
                      Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:Colors.black,
                        boxShadow:[ BoxShadow(color: Colors.black54.withOpacity(0.8),
                            blurRadius:10,
                            offset:Offset(5,9),
                            ),]
                            ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 20),),
                        InkWell(
                            onTap:(){
                          Get.to(()=>MainPage());
                        },
                          child: Icon(Icons.trending_flat, color:Colors.white,
                                              ),
                        ),
                        
                      ]),
                    ),
                   
                  ],
                ),
            )
            ),
          ]),

      ),
    );
  }
}