import "package:flutter/material.dart";
import 'package:carousel_pro/carousel_pro.dart';
//my own imports.
import 'package:ecommerce/components/horizontal.dart';
import 'package:ecommerce/components/products.dart';
import 'package:ecommerce/components/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/m2.jpg"),
          //    AssetImage("images/w1.jpg"),
          AssetImage("images/w3.jpeg"),
          AssetImage("images/w4.jpeg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.black,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red[800],
        title: Text("siya fashion"),
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
              onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                                  }
                                  ),
                            ],
                          ),
                          drawer: Drawer(
                            child: ListView(
                              children: <Widget>[
                                //header
                                UserAccountsDrawerHeader(
                                  accountName: Text("ram siya"),
                                  accountEmail: Text("pranjalnishu08@gmail.com"),
                                  currentAccountPicture: GestureDetector(
                                    child: new CircleAvatar(
                                      backgroundColor: Colors.yellow[300],
                                      child: Icon(Icons.person, color: Colors.black),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                  ),
                                ),
                    
                                InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    title: Text("Home Page"),
                                    leading: Icon(
                                      Icons.home,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    title: Text("My Account"),
                                    leading: Icon(
                                      Icons.person,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    title: Text("My Orders"),
                                    leading: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                    
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Cart()));
                                  },
                                  child: ListTile(
                                    title: Text("Shpping Cart"),
                                    leading: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                    
                                InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    title: Text("favourites"),
                                    leading: Icon(
                                      Icons.favorite,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                                Divider(color: Colors.redAccent, height: 5.0, thickness: 2.0),
                    
                                InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    title: Text("Settings"),
                                    leading: Icon(Icons.settings, color: Colors.redAccent),
                                  ),
                                ),
                    
                                InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    title: Text("About"),
                                    leading: Icon(Icons.help, color: Colors.redAccent),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          body: ListView(
                            children: <Widget>[
                              //image carousel begins here.
                              image_carousel,
                              //padding widget.
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Categories",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.redAccent[200],
                                  ),
                                ),
                              ),
                    
                              //horizontal list view begins here.
                              HorizontalList(),
                    
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "Recent Products",
                                  style: TextStyle(color: Colors.redAccent[200], fontSize: 30.0),
                                ),
                              ),
                    
                              Container(
                                height: 400,
                                child: Products(),
                              )
                            ],
                          ),
                        );
                      }
                    }
                    
                    
