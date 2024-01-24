import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 31),
      color:Colors.grey[200] ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Popular Category",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          // const SizedBox(
          //   height: 8,
          // ),
          Row(
            children: [
              Expanded(
                child: TextButton(onPressed: (){},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsetsDirectional.zero)
                ),
                 child:  Text('Hair Care',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),)),
              ),
               Expanded(
                flex: 2,
                 child: TextButton(onPressed: (){},
                             style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsetsDirectional.zero)
                             ),
                 child:  Text('Beard Care',
                             style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                             ),)),
               ),
               Expanded(
                flex: 2,
                 child: TextButton(onPressed: (){},
                             style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsetsDirectional.zero)
                             ),
                 child:  Text('Health & Wellness',
                             style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                             ),)),
               )
            ],
          ),
          // const SizedBox(
          //   height: 12,
          // ),
          Row(
            children: [
              Expanded(
                child: TextButton(onPressed: (){},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsetsDirectional.zero)
                ),
                 child:  Text('Face Care',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),)),
              ),
               Expanded(
                flex: 2,
                 child: TextButton(onPressed: (){},
                             style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsetsDirectional.zero)
                             ),
                 child:  Text('Body Care',
                             style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                             ),)),
               ),
               Expanded(
                flex: 2,
                 child: TextButton(onPressed: (){},
                             style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsetsDirectional.zero)
                             ),
                 child:  Text('Fitness',
                             style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                             ),)),
               )
            ],
          ),
          // const SizedBox(
          //   height: 6,
          // ),
          Divider(
            thickness: 2,
            color: Colors.grey[300],
            // color: Color(0xFF0000001A),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Popular Searches",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          const SizedBox(
            height: 6,
          ),
          Text("Hari Fall | Shampoo | Face Cream | Hair Oil | Grooming Kit | Saving Cream | Fitness | Hari Fall | Shampoo | Face Cream | Hair Oil | Grooming Kit | Saving Cream | Fitness | Hari Fall | Shampoo | Face Cream | Hair Oil | Grooming Kit | Saving Cream | Fitness | Hari Fall | Shampoo | Face Cream | Hair Oil | Grooming Kit | Hari Fall | Shampoo | Face Cream | Hair Oil | Grooming Kit | Saving Cream | Fitness | Hari Fall",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[800],
            letterSpacing: 0.1
          ),),
          const SizedBox(
            height: 16,
          ),
           Divider(
            thickness: 2,
            color: Colors.grey[300],
            // color: Color(0xFF0000001A),
          ),
          const SizedBox(
            height: 42,
          ),
          Text("© 2022 - 2023 Copyright AbsoluteMen Private Limited",
          style:TextStyle(
            fontSize: 12,
            color: Colors.grey[800],
          ) ,),
          const SizedBox(
            height: 8,
          ),
          Wrap(
            children: [
              GestureDetector(onTap: (){},
                  //            style: ButtonStyle(
                  // padding: MaterialStateProperty.all(EdgeInsetsDirectional.all(0))
                  //            ),
                 child:  const Text('Terms and Conditions',
                             style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2556B9),
                  fontWeight: FontWeight.bold
                             ),)),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                                height: 14,
                                width: 1.8,
                                color: Colors.grey[900],
                              ),
                              GestureDetector(onTap: (){},
                  //            style: ButtonStyle(
                  // padding: MaterialStateProperty.all(EdgeInsetsDirectional.all(0))
                  //            ),
                 child:  const Text('Privacy Policy',
                             style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2556B9),
                             ),)),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                                height: 14,
                                width: 1.8,
                                color: Colors.grey[900],
                              ),
                              GestureDetector(onTap: (){},
                  //            style: ButtonStyle(
                  // padding: MaterialStateProperty.all(EdgeInsetsDirectional.all(0))
                  //            ),
                 child:  const Text('Cancellation And Refund Policy',
                             style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2556B9),
                             ),)),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                                height: 14,
                                width: 1.8,
                                color: Colors.grey[900],
                              ),
                              GestureDetector(onTap: (){},
                  //            style: ButtonStyle(
                  // padding: MaterialStateProperty.all(EdgeInsetsDirectional.zero)
                  //            ),
                 child:  const Text('Delivery Partner',
                             style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2556B9),
                             ),)),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                                height: 14,
                                width: 1.8,
                                color: Colors.grey[900],
                              ),
                              GestureDetector(onTap: (){},
                  //            style: ButtonStyle(
                  // padding: MaterialStateProperty.all(EdgeInsetsDirectional.zero)
                  //            ),
                 child:  const Text('Shipping Policy',
                             style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2556B9),
                             ),)),
                             
                              
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Row(
            children: [
              Icon(
                FontAwesomeIcons.facebookF,
                size: 20,
                color:Color(0xFF2556B9) ,
              ),
              SizedBox(
            width: 16,
          ),
              Icon(
                FontAwesomeIcons.youtube,
                                size: 20,

                color:Color(0xFF2556B9) ,
              ),
               SizedBox(
            width: 16,
          ),
              Icon(
                FontAwesomeIcons.twitter,
                                size: 20,

                color:Color(0xFF2556B9) ,
              ),
               SizedBox(
            width: 16,
          ),
              Icon(
                FontAwesomeIcons.instagram,
                                size: 20,

                color:Color(0xFF2556B9) ,
              ),
              
            ],
          )
        ],
      ),
    );
  }
}





