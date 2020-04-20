import "package:flutter/material.dart";
class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
    var products_on_cart=[
    {
      "name": "Blazzer",
      "picture": "images/products/blazer1.jpeg",
      "price":85,
      "size":"M",
      "color":"RED",
      "quantity": 1,
    },

      {
      "name": "Blazzer",
      "picture": "images/products/blazer1.jpeg",
      "price":85,
      "size":"M",
      "color":"RED",
      "quantity": 1,
    },
 
 


  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products_on_cart.length,
      itemBuilder:(context,index){
          return Single_cart_product(
            cart_product_name: products_on_cart[index]["name"],
            cart_product_color: products_on_cart[index]["color"],
            cart_pro_picture: products_on_cart[index]["picture"],
            cart_pro_price: products_on_cart[index]["price"],
            cart_product_qty: products_on_cart[index]["qty"],
            cart_product_size: products_on_cart[index]["size"],
          );
      });
    
      
    
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_pro_price;
  final cart_pro_picture;
  final cart_product_size;
  final cart_product_color;
  final cart_product_qty;

  Single_cart_product({
    this.cart_pro_picture,
    this.cart_pro_price,
    this.cart_product_color,
    this.cart_product_name,
    this.cart_product_qty,
    this.cart_product_size,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        leading:  Image.asset(cart_pro_picture,width: 100.0,height: 200.0),
        title: Text(cart_product_name),
        subtitle:Column(children: <Widget>[
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Size"),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(cart_product_size),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 8.0,8.0,8.0),
              child: Text("Color"),
            ),
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(cart_product_color),
            ),
        ],),
        


          Container(
            alignment: Alignment.topLeft,
            child: Text("\$${cart_pro_price}"),
          ),
        ],
      ),

      trailing: Column(
        children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_drop_up),onPressed:(){}),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("$cart_product_qty"),
          ),
          IconButton(icon: Icon(Icons.arrow_drop_down),onPressed:(){}),

        ],
      ),
      
    ));
  }
}