import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        // margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 36),
        width: 290,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image:const DecorationImage(image:  AssetImage('assets/images/comments5.jpg'),
          fit: BoxFit.fill) ,
          border: Border.all(
            color: const Color(0xFF2E5DA8B3),
        
          )
        ),
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text('Hairfall Control 2-in-1 Shampoo & \n Conditioner',
              textAlign: TextAlign.center,
              style:TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                color: Colors.black.withOpacity(0.6),
              ) ,),
            ),
            const SizedBox(
              height: 4,
            ),
          Text("Product is really great. Using it from past 6-7 months and saw great impact on hair fall.",
          textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.5),
            ) ,
          ),
          const SizedBox(
              height: 28,
            ),
            const CircleAvatar(
              radius: 35,
              backgroundImage:  NetworkImage('https://plus.unsplash.com/premium_photo-1689977927774-401b12d137d6?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlJTIwZm9yJTIwbWVufGVufDB8fDB8fHww'),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text("Daksh Jain",
            style: TextStyle(
             fontSize: 14,
             fontWeight: FontWeight.bold,
    
            ),
            ),
            const SizedBox(
              height: 4,
            ),
              const Text("Software Engineer",
            style: TextStyle(
             fontSize: 12,
             color: Color(0xFF707D97),
            ),
            )
          ],
    
        ),
      ),
    );
  }
}