import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
   const ItemCard({super.key, this.bannerRequired, this.message, this.bannerColor, this.imageWidget, required this.brandName, required this.name, required this.price, required this.salePrice, required this.rating,  this.imageLink,});
   final String? bannerRequired;
   final String? message;
   final Color? bannerColor;
   final Widget? imageWidget;
   final String brandName;
   final String name;
   final String price;
   final String salePrice;
   final String rating;
   final String? imageLink;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
 bool _isSelected = false;
//  final int priceInt=int.parse((widget.price)); 

  @override
  Widget build(BuildContext context) {
     final int priceInt=int.parse((widget.price)); 
      final int salepriceInt=int.parse((widget.salePrice)); 
      final int discount= (priceInt-salepriceInt);
      final double discountPercentage=((discount/priceInt)*100);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.only(bottom: 16),
      width: 225,
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
                                  border: Border.all(color:const Color.fromRGBO(207, 216, 220, 1)),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if((widget.bannerRequired)=="true")
          Banner(
            location: BannerLocation.topStart,
            message: widget.message!,
            color: (widget.rating)=="4.5"?const Color(0xFFFF7600):const Color(0xFF2556B9),
          
            child: Container(
              width: 225,
              height: 180,
              decoration:  const BoxDecoration(
                            color:  Color.fromRGBO(207, 216, 220, 1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                ),
                child:Stack(fit: StackFit.expand,
                  children: [
                    const ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                      child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiBJk_QJBQynKk04CwQ0RZb03xxNMDk1Tydw&usqp=CAU'),
                      fit:BoxFit.cover ,),
                    ),
                    // widget.imageWidget??Container(),
                    Positioned(
                      right: 12,
                      top: 12,
                      child: IconButton(
                      onPressed:() {
                        setState(() {
                          _isSelected=!_isSelected;
                        });
                      }, 
                      icon: _isSelected?const Icon(Icons.favorite,
                      size: 34,
                      color: Color(0xFF2556B9),):const Icon(Icons.favorite_border,
                      size: 34,
                      color: Color(0xFF2556B9),),
                     
                     ))

                  ],
                ) ,
                // child: image??const Text(""),
            ),
          ),
          if((widget.bannerRequired)=="false")
           Container(
              width: 225,
              height: 185,
              decoration:  const BoxDecoration(
                // image:DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/I/71tWFEi+DVL._AC_UF1000,1000_QL80_.jpg') ) ,
                            color:  Color.fromRGBO(207, 216, 220, 1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                ),
                child:Stack(
                  fit: StackFit.expand,
                  children: [
                    // widget.imageWidget??Container(),
                    const ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                      child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiBJk_QJBQynKk04CwQ0RZb03xxNMDk1Tydw&usqp=CAU'),
                      fit:BoxFit.cover ,),
                    ),

                    Positioned(
                      right: 12,
                      top: 12,
                      child: IconButton(
                      onPressed:() {
                        setState(() {
                          _isSelected=!_isSelected;
                        });
                      }, 
                      icon: _isSelected?const Icon(Icons.favorite,
                      size: 34,
                      color: Color(0xFF2556B9),):const Icon(Icons.favorite_border,
                      size: 34,
                      color: Color(0xFF2556B9),),
                     
                     )),
                    //  const Image(image: NetworkImage('https://m.media-amazon.com/images/I/71tWFEi+DVL._AC_UF1000,1000_QL80_.jpg'))

                  ],
                ) ,
                // child: image??const Text(""),
            ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding:const EdgeInsets.symmetric(horizontal: 30,vertical: 10) ,
                backgroundColor:const Color(0xFF2556B9),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                )
              ),
               child: const Text("Add To Cart")),
               Container(
                margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color(0xFFE8E8E8),
                ),
                child:  Row(
                  children: [
                    Text(widget.rating,
                    style: const TextStyle(fontSize: 12,
                    fontWeight: FontWeight.bold),),
                    const Icon(Icons.star,
                    color: Color(0xFFFFCE00),
                    ),
                  ],
                ),
               )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,),
            child: RichText(
              text:  TextSpan(
              
              text:"Brand Name : ",
              style:const TextStyle(
                color: Color(0xFF2556B9),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: widget.brandName,
              style:const TextStyle(
                color: Color(0xFF2556B9),
                fontSize: 14,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
                )
              ]
            )),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Text(widget.name,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(0.8),
              overflow: TextOverflow.ellipsis,
          
            ),),
          ),
          const SizedBox(
            height: 4,
          ),
           Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                          children: [
                             Text(widget.salePrice,
                            style:const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(widget.price,
                            style: TextStyle(
                             fontSize: 14,
                             color: Colors.black.withOpacity(0.8) ,
                             decoration: TextDecoration.lineThrough,
                             overflow: TextOverflow.ellipsis,
                            ),
                            ),
                             const SizedBox(
                              width: 8,
                            ),
                             Text("(${(discountPercentage.toStringAsFixed(0))}% OFF)",
                            style:const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFF6200)
                            ),)
                          ],
                        ),
             )
         
        ],
      ),
    );
  }
}