import "package:flutter/material.dart";

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_oldprice;
  final product_detail_price;
  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_oldprice,
    this.product_detail_price,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text("Fashion"),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {})
          ]),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white30,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "${widget.product_detail_oldprice}",
                          style: TextStyle(
                              color: Colors.green[700],
                              fontSize: 30.0,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${widget.product_detail_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 30.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //first buttons
          Row(
            children: <Widget>[
              // ================the size buttons =============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text(
                              "Choose The Size",
                              style: TextStyle(fontSize: 20.0),
                            ),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "Close",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Size",
                          style: TextStyle(
                              color: Colors.redAccent, fontSize: 20.0),
                        ),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose The Color"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Color",
                          style:
                              TextStyle(color: Colors.redAccent, fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quant"),
                            content: Text("Enter the quantity"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Qty",
                          style: TextStyle(
                              color: Colors.redAccent, fontSize: 30.0),
                        ),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  height: 40.0,
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                        fontSize: 20.0, letterSpacing: 1.0, wordSpacing: 2.0),
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
            ],
          ),
          Divider(
            color: Colors.redAccent,
          ),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text("hello my name is pranjal"),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 7),
                child: Text("Product Name"),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 7),
                child: Text("Product Brand"),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 7),
                child: Text("Product Condition"),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("New"),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Similar Products",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.redAccent,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
              ),
            ),
          ),
          Container(
            height: 360.0,
            child: Recent(),
          )
        ],
      ),
    );
  }
}

class Recent extends StatefulWidget {
  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
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
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_prod(
            product_name: product_list[index]["name"],
            pro_picture: product_list[index]["picture"],
            pro_old_price: product_list[index]["oldprice"],
            pro_price: product_list[index]["price"],
          );
        });
  }
}

class Similar_Single_prod extends StatelessWidget {
  final product_name;
  final pro_picture;
  final pro_old_price;
  final pro_price;

  Similar_Single_prod({
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
          tag: product_name,
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      title: Text(
                        "\$$pro_price",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w900,
                            fontSize: 20.0),
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
