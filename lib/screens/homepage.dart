import 'dart:convert';

import 'package:absolutemen_app/model/productlist.dart';
import 'package:absolutemen_app/screens/widgets/detailscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/itemcard.dart';
import 'widgets/reviewcard.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Products> userData = [];

final review_controller=PageController();
final saleposter_controller=PageController();
  late Future futureProduct;


@override
void initState() {
    // TODO: implement initState
    super.initState();
    futureProduct = getData();

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(onPressed: (){},
           icon:  const Icon(FontAwesomeIcons.heart, color: Colors.black, size: 24,)),
          const SizedBox(width: 12,),
          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.bagShopping,color: Colors.black,size: 24,)),
                    const SizedBox(width: 12,),
                    // const SizedBox(width: 16,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined,color: Colors.black,size: 24,)),
                    const SizedBox(width: 12,),

          IconButton(onPressed: (){}, icon: const Icon(Icons.menu, color: Colors.black,size: 24,)),
                    const SizedBox(width: 12,),
                    
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(75, 158, 158, 158),
        onPressed: (){},
      child:const Image(image: AssetImage('assets/images/icons8-whatsapp-50.png',
      ),
      height: 40,
      width: 40,
      ), 
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: PageView(
                controller:saleposter_controller ,
                children: [
                  Container(
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/megasale2.jpg'),fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(
                         Radius.circular(16))
                    ),
                    
                  ),
                   Container(
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/megasale3.jpg'),fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(
                         Radius.circular(16))
                    ),
                    
                  ),
                   Container(
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/mega_sale.jpg'),fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(
                         Radius.circular(16))
                    ),
                    
                  ),
                   Container(
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/megasale1.jpg'),fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(
                         Radius.circular(16))
                    ),
                    
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Align(
              alignment:Alignment.center ,
              child: SmoothPageIndicator(controller: saleposter_controller, count: 4,
              effect: ColorTransitionEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: const Color(0xFF2556B9),
                dotColor: Colors.black.withOpacity(0.1)
              ),
              ),
            ),

            const SizedBox(
              height: 35,
            ),

             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
               child: Text("START SHOPPING BY CATEGORY",
                         style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
             
                         ),),
             ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                    height: 106,
                   
                     decoration: const BoxDecoration(
                      image: DecorationImage(image:AssetImage('assets/images/face_care.jpg'),
                      fit: BoxFit.fill ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    
                     ), 
                     child: const Padding(
                       padding: EdgeInsets.only(top: 12,left: 10),
                       child: Text("Face\nCare",
                       style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                       ),),
                     ),
                    ),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                   
                     height: 106,
                     decoration: const BoxDecoration(
                              image: DecorationImage(image:AssetImage('assets/images/fitness1.jpg'),
                      fit: BoxFit.fill ),                  borderRadius: BorderRadius.all(Radius.circular(16)),
                              
                     ), 
                      child: const Padding(
                       padding: EdgeInsets.only(top: 12,left: 10),
                        child: Text("Fitness",
                                       style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                                       ),),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                
                      height: 106,
                     decoration: const BoxDecoration(
                      image: DecorationImage(image:AssetImage('assets/images/hair_care.jpg'),
                      fit: BoxFit.fill ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                              
                     ), 
                      child: const Padding(
                       padding: EdgeInsets.only(top: 12,left: 10),
                        child: Text("Hair \nCare",
                                       style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                                       ),),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 106,
                        // width: 106,
                         decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage('assets/images/beard_care.jpg'),
                                          fit: BoxFit.fill ),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                                  
                         ),
                          child: const Padding(
                                           padding: EdgeInsets.only(top: 12,left: 5),
                            child: Text("Beard \nCare",
                                           style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                           ),),
                          ), 
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 106,
                         decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage('assets/images/haw1.jpg'),
                                          fit: BoxFit.fill ),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                                  
                         ), 
                          child: const Padding(
                                           padding: EdgeInsets.only(top: 12,left: 8),
                            child: Text("Health &\nWellness",
                                           style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                           ),),
                          ),
                        ),
                      ),const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                         
                        //  width: MediaQuery.of(context).size.width,
                          height: 106,
                        // width: 106,
                         decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage('assets/images/body_care.jpg'),
                                          fit: BoxFit.fill ),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                                  
                         ), 
                          child: const Padding(
                                           padding: EdgeInsets.only(top: 12,left: 12),
                            child: Text("Body \nCare",
                                           style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                           ),),
                          ),
                        ),
                      ),
                    ],
                  ),
            ),
                const SizedBox(
                  height: 41,
                ),
                Container(
                                margin: const EdgeInsets.symmetric(horizontal: 16),

              height: 140,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/top_deal2.jpg'),fit: BoxFit.fill),
                borderRadius: BorderRadius.all(
                   Radius.circular(16))
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Absolute Men",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 24,
                            color: Colors.white
                          ),),
                          Text("TOP DEALS",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),)
                        ],
                      ),
                      ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16,horizontal: 30)),
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )
                        )
                      ),
                       child:Text("View All",
                       style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                       ),
                       ) ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             SizedBox(
              height: 340,
              child: FutureBuilder(
                future: futureProduct,
                builder: (context, snapshot) {
                  if(snapshot.hasData)
                 {
                  return ListView.builder(
                    padding: const EdgeInsets.only(left: 8),
                   scrollDirection: Axis.horizontal, 
                    itemCount: 4,
                    itemBuilder:(context, index) {
                    return ItemCard(
                      brandName: '${userData[index].brand}',
                      name:userData[index].name ,
                      price:userData[index].price ,
                      salePrice: userData[index].saleprice,
                      bannerRequired: userData[index].banner,
                      message: userData[index].bannerMessage,
                      rating: userData[index].rating,
                      // imageLink: userData[index].image,

                    );
                  },);
                  
                  }
                  else if(snapshot.hasError){
                    return Text("${snapshot.error}");
                  }
                  else{
                    return const CircularProgressIndicator();
                  }
                  
                }
              )),
             const SizedBox(
              height: 42,
             ),
             SizedBox(
              height:185 ,
               child: ListView(
                scrollDirection:Axis.horizontal ,
                padding: const EdgeInsets.only(left: 8),
                 children: [
                   Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 8),
             
                    height: 182,
                    width: 128,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xFFD8D8D8)
                    ),
                   ),
                   Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 8),
             
                    height: 182,
                    width: 128,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xFFD8D8D8)
                    ),
                   ),
                   Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 8),
             
                    height: 182,
                    width: 128,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xFFD8D8D8)
                    ),
                   ),
                   Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 8),
             
                    height: 182,
                    width: 128,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xFFD8D8D8)
                    ),
                   ),
                   Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 8),
             
                    height: 182,
                    width: 128,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xFFD8D8D8)
                    ),
                   ),
                 ],
               ),
             ),
             const SizedBox(
              height: 44,
             ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: const TextSpan(
                    text: "NEW \n",
                    style: TextStyle(
                      fontSize: 33,
                      color: Color(0xFF2556B9)
                    ),
                    children: [
                      TextSpan(
                        text: "ARRIVALS",
                        style: TextStyle(
                          fontSize: 33,
                          color: Colors.black
                        )
                        
                      ),
                    ]
                  )),
                  ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF2556B9)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 33,
                    vertical: 10,)
                  ),
                   child: const Text("View All",
                   style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2556B9)
                   ),))
                ],
               ),
             ),
             const SizedBox(
              height:22 ,
             ),
            SizedBox(
              height: 340,
              child: FutureBuilder(
                future: futureProduct,
                builder: (context, snapshot) {
                  if(snapshot.hasData)
                 {
                  return ListView.builder(
                    padding: const EdgeInsets.only(left: 8),
                   scrollDirection: Axis.horizontal, 
                    itemCount: 4,
                    itemBuilder:(context, index) {
                    return ItemCard(
                      brandName: '${userData[index].brand}',
                      name:userData[index].name ,
                      price:userData[index].price ,
                      salePrice: userData[index].saleprice,
                      rating: userData[index].rating,
                      bannerRequired: userData[index].banner,
                      message: userData[index].bannerMessage,
                                            // imageLink: userData[index].image,

                    );
                  },);
                  
                  }
                  else if(snapshot.hasError){
                    return Text("${snapshot.error}");
                  }
                  else{
                    return const CircularProgressIndicator();
                  }
                  
                }
              )),
              const SizedBox(
              height:42 ,
             ),
              Container(
                              margin: const EdgeInsets.symmetric(horizontal: 16),

              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/bloom_sakura.jpg'),fit: BoxFit.fill),
                borderRadius: BorderRadius.all(
                   Radius.circular(16))
              ),
              
            ),
             const SizedBox(
              height:42 ,
             ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("TRENDING ",
                  style: TextStyle(
                    fontSize: 41,
                    
                  ),),
            ),
                 const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
                   child: Row(
                     children: [
                       Text("OFFERS",
                                 style: TextStyle(
                        fontSize: 41,
                        
                                 ),),
                                SizedBox(
                                  width: 4,
                                ),
                                Image(image: AssetImage('assets/images/discount.png'),
                                height: 40,
                                width: 40,),
                     ],
                   ),
                 ),
                const SizedBox(
              height:16 ,
             ), 
             
             Container(
              margin: EdgeInsets.zero,
              padding:const EdgeInsets.symmetric(vertical: 32),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF2556B9),
                  Color(0xFF132B5D)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                )
              ),
              child: Column(
                children: [
                 SizedBox(
              height: 340,
              child: FutureBuilder(
                future: futureProduct,
                builder: (context, snapshot) {
                  if(snapshot.hasData)
                 {
                  return ListView.builder(
                    padding: const EdgeInsets.only(left: 8),
                   scrollDirection: Axis.horizontal, 
                    itemCount: 4,
                    itemBuilder:(context, index) {
                    return ItemCard(
                      brandName: '${userData[index].brand}',
                      name:userData[index].name ,
                      price:userData[index].price ,
                      salePrice: userData[index].saleprice,
                      rating: userData[index].rating,
                      bannerRequired: userData[index].banner,
                      message: userData[index].bannerMessage,
                                            // imageLink: userData[index].image,

                    );
                  },);
                  
                  }
                  else if(snapshot.hasError){
                    return Text("${snapshot.error}");
                  }
                  else{
                    return const CircularProgressIndicator();
                  }
                  
                }
              )),
              const SizedBox(
                height: 10,
              ),
                   ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                   
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 33,
                  vertical: 10,)
                ),
                 child: const Text("View All",
                 style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2556B9)
                 ),)),

                ],
              ),
             ),
              const SizedBox(
              height:42 ,
             ),
             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
               child: Text("OUR PARTNERS",
               style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
               ),),
             ),
              const SizedBox(
              height:16 ,
             ), 
             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
               child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                     child: Image(image: AssetImage('assets/images/nivea2.png',
                    
                    ),
                    fit: BoxFit.fill,
                    height: 80,
                    width: 80,
                    ),
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                       child: Image(image: AssetImage('assets/images/olay2.jpg',
                      
                      ),
                      fit: BoxFit.fill,
                      height: 80,
                      width: 80,
                      ),
                      ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                     child: Image(image: AssetImage('assets/images/lashika1.png',
                    
                    ),
                    fit: BoxFit.fill,
                    height: 80,
                    width: 80,
                    ),
                    ),
                  ),
                ],
               ),
             ),
              const SizedBox(
              height:16 ,
             ), 
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 16),
               child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                     child: Image(image: AssetImage('assets/images/mcaffeine.png',
                    
                    ),
                    fit: BoxFit.fill,
                    height: 80,
                    width: 80,),
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                     child: Image(image: AssetImage('assets/images/scotchporter.png',
                    
                    ),
                    fit: BoxFit.fill,
                    height: 80,
                    width: 80,),
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                     child: Image(image: AssetImage('assets/images/olay.png',
                    
                    ),
                    fit: BoxFit.fill,
                    height: 80,
                    width: 80,),
                    ),
                  ),
                ],
               ),
             ),
              const SizedBox(
              height:42 ,
             ), 
             const Align(
              alignment: Alignment.center,
               child: Text("Our Customers’ Feedback",
               style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
               ),),
             ),
             const SizedBox(
              height:4 ,
             ),
             const Align(
              alignment: Alignment.center,
               child: Text("What Our Customers are Saying",
               style: TextStyle(
                fontSize: 12,
                color: Color(0xFF2556B9)
               ),),
             ),
             const SizedBox(
              height:21 ,
             ),
             SizedBox(
              height: 320,

              child: PageView(
                controller: review_controller,
                // padding: const EdgeInsets.only(left: 8),
                scrollDirection: Axis.horizontal,
                children: const [
                  ReviewCard(),
                  ReviewCard(),
                  ReviewCard()
                ],
              )),
              const SizedBox(height: 12,),
              Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                
                effect: ExpandingDotsEffect(
                     activeDotColor: Colors.black.withOpacity(0.5),
                  dotColor: Colors.black.withOpacity(0.1),
                  radius: 50,
                  dotHeight: 12,
                  dotWidth: 12,
                ),
                  controller: review_controller,
                   count: 3,
                   )),
             const SizedBox(
              height:42 ,
             ),
              Container(
                              margin: const EdgeInsets.symmetric(horizontal: 16),

              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/video.jpg'),fit: BoxFit.fill),
                borderRadius: BorderRadius.all(
                   Radius.circular(16))
              ),
              
            ),
            const SizedBox(
              height:42 ,
             ),
             const DetailsCard()

          ],
        ),
        ),
        
      ),
    );
  }
  Future<List<Products>> getData() async {
    final String response = await rootBundle.loadString('assets/topdetails.json');
    final data = await json.decode(response);
    print(data);
    for (Map<String, dynamic> index in data) {
        userData.add(Products.fromJson(index));
      }
      return userData;
   
  }
  //  Future<List<Products>> getData() async {
  //   final response = await http.get(Uri.parse('https://api.jsonserve.com/PwLzWQ'));
  //   var data = jsonDecode(response.body.toString());


  //   if (response.statusCode == 200) {
      // for (Map<String, dynamic> index in data) {
      //   userData.add(Products.fromJson(index));
      // }
  //     return userData;
  //   }
  //   return userData; //empty list
  // }
}



