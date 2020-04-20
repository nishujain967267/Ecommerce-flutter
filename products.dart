import "package:flutter/material.dart";
import "package:ecommerce/pages/product_details.dart";

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazzer",
      "picture": "images/products/blazer1.jpeg",
      "oldprice": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "oldprice": 120,
      "price": 80,
    },
    {
      "name": "Girls Heals",
      "picture": "images/products/hills2.jpeg",
      "oldprice": 120,
      "price": 80,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "oldprice": 120,
      "price": 80,
    },
    {
      "name": "shoes",
      "picture": "images/products/shoe1.jpg",
      "oldprice": 120,
      "price": 80,
    },
    {
      "name": "skirts",
      "picture": "images/products/skt1.jpeg",
      "oldprice": 120,
      "price": 80,
    },
     {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "oldprice": 120,
      "price": 80,
    },
     {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "oldprice": 120,
      "price": 80,
    },
     {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "oldprice": 120,
      "price": 80,
    },



  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              product_name: product_list[index]["name"],
              pro_picture: product_list[index]["picture"],
              pro_old_price: product_list[index]["oldprice"],
              pro_price: product_list[index]["price"],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final pro_picture;
  final pro_old_price;
  final pro_price;

  Single_prod({
    this.pro_old_price,
    this.pro_picture,
    this.pro_price,
    this.product_name,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Hero(
        tag:Text("hero1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        product_detail_name: product_name,
                        product_detail_oldprice: pro_old_price,
                        product_detail_picture: pro_picture,
                        product_detail_price: pro_price,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                      ),
                      title: Text(
                        "\$$pro_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w900,fontSize: 20.0),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    pro_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
