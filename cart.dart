import "package:flutter/material.dart";
import "package:ecommerce/components/cart_products.dart";

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.red,
        title: Text("Cart"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

      body: Cart_products(),



      bottomNavigationBar: Container(
        color: Colors.blue[50],
        child: Row(children: <Widget>[Expanded(
          child: ListTile(
            title: Text("Total Amount"),
            subtitle: Text("123"),

          ),
        ),
        Expanded(
        child:MaterialButton(onPressed: (){},
        child: Text("Checkout",style: TextStyle(color:Colors.white),),
        color: Colors.redAccent,),
        
        
        ),
        ],),
        ),
    );
  }
}
