import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
 
  @override
  Widget build(BuildContext context) {
     TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        height:double.maxFinite,
        padding: const EdgeInsets.only(right:20,left:20, top:50),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Row(
                children:[
                  InkWell(
                     onTap: (){
                         Get.back();
                      },
                    child: Icon(Icons.arrow_back_ios,size:20,color:Colors.black,
                    ),
                  )
                ]

              ),
              Text("What do you want", style: TextStyle(color: Colors.black, fontSize:30)),
               Text("to cook today?", style: TextStyle(color: Colors.black, fontSize:30)),
               SizedBox(height:10),
              Row(
                children:[
                  Expanded(
                    child: TextField(
                              decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Find delicious recipe here',
                    border: InputBorder.none),
                            ),
                  ),
            Container(
              width:30,
              height:30,
              decoration: BoxDecoration(
                color:Colors.brown,
                borderRadius:BorderRadius.circular(5),
              ),
              child: Center(
                child:Icon(Icons.apps,color:Colors.white)
              ),
            ),
                ]
              ),
              SizedBox(height:20),
              Text("Category", style:TextStyle(color:Colors.black,fontSize:15)),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                     labelPadding: const EdgeInsets.only(left:20, right:20),
                 controller: _tabController,
                 labelColor:  Colors.black,
                 unselectedLabelColor: Colors.grey,
                 isScrollable: true,
                indicatorColor: Colors.transparent,
                splashBorderRadius:BorderRadius.circular(5),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                   (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered))
        return Colors.black; //<-- SEE HERE
      return null; 
    },
  ),
                   tabs:[
                       Tab(text:"Main Course"),
                       Tab(text:"Appitizer"),
                      Tab(text:"Dessert"),
                   ]
                  ),
                )
              ),
              SizedBox(height:10),
              Row(
               children:[
                 Text("Trending Recipe", style:TextStyle(color:Colors.black,fontSize:25)),
                Expanded(child:Container()),
                Text("show all",style:TextStyle(color:Colors.grey,fontSize:25))
               ]
              ),
              SizedBox(height:10),
               Container(
               height: 500,
               padding: const EdgeInsets.only(right: 0),
               width: double.maxFinite,
               child: TabBarView(
                 controller: _tabController,
                children:[
                          ListView.builder(
                           itemCount:2,
                       
                          itemBuilder: (_,i){
                          return Row(
                            children:[
                              Container(
                                height: 170,
                              width: 150,
                              margin:EdgeInsets.only(left:10, right:10,bottom:5),
                              padding: EdgeInsets.only( top:5),
                              decoration: BoxDecoration(
                                color:Colors.white,
                                 borderRadius: BorderRadius.circular(15),
                              
                                  boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset: Offset(5,5),
                                    color: Colors.grey.withOpacity(0.1)
                                  ),
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset: Offset(-5,-5),
                                    color: Colors.grey.withOpacity(0.1)
                                  )
                                ]
                              ),
                            
                                
                                  child: Column(
                                  children:[
                                    Container(
                                      width:120,
                                      height:100,
                                      decoration:BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image:DecorationImage(
                                          image:AssetImage("assets/pexels1.jpg"),
                                          fit:BoxFit.cover,
                                        )
                                      )
                                    ),
                                    Text("Beef Tanderian\nSteak", style:TextStyle(color:Colors.black,fontSize:20)),
                                    Text("30 likes 11  savings", style:TextStyle(color:Colors.grey,fontSize:10)),
                                  
                                  ]
                                )
                              ),
                            
                       
                             Container(
                                height: 170,
                              width: 150,
                               margin:EdgeInsets.only(left:10, right:10,bottom:5),
                              padding: EdgeInsets.only( top:5),
                              decoration: BoxDecoration(
                                color:Colors.white,
                                 borderRadius: BorderRadius.circular(15),
                              
                                  boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset: Offset(5,5),
                                    color: Colors.grey.withOpacity(0.1)
                                  ),
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset: Offset(-5,-5),
                                    color: Colors.grey.withOpacity(0.1)
                                  )
                                ]
                              ),
                            
                                
                                  child: Column(
                                  children:[
                                    Container(
                                      width:120,
                                      height:100,
                                      decoration:BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                        image:DecorationImage(
                                          image:AssetImage("assets/pexels2.jpg"),
                                          fit:BoxFit.cover,
                                        )
                                      )
                                    ),
                                    Text("Beef Tanderian\nSteak", style:TextStyle(color:Colors.black,fontSize:20)),
                                    Text("30 likes 11  savings", style:TextStyle(color:Colors.grey,fontSize:10)),
                                  
                                  ]
                                )
                              ),
                            
                            ]
                          );
                                         }),
                     
                  
                 Text("appitizer"),
                 Text("desert"),
                ]
               ),
        
               ),
            ],
          ),
        ),
      ),
    );
  }
}