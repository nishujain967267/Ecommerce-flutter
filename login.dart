import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:fluttertoast/fluttertoast.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:google_sign_in/google_sign_in.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "home.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences preferences;
  bool loading = false;
  bool isLoggedin = false;

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }

  void isSignedIn() async {
    setState(() {
      loading = true;
    });
    preferences = await SharedPreferences.getInstance();
    isLoggedin = await googleSignIn.isSignedIn();
    if (isLoggedin) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
    setState(() {
      loading = false;
    });
  }

  Future handleSignIn() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      loading = true;
    });

    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser.authentication;
    FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    if (firebaseAuth != null) {
      final QuerySnapshot result = await Firestore.instance
          .collection("users")
          .where("id", isEqualTo: firebaseUser.uid)
          .getDocuments();
      final List<DocumentSnapshot> document = result.documents;
      if (document.length == 0) {
        Firestore.instance
            .collection("users")
            .document(firebaseUser.uid)
            .setData({
          "id": firebaseUser.uid,
          "username": firebaseUser.displayName,
          "profilePicture": firebaseUser.photoUrl,
        });
        await preferences.setString("id",firebaseUser.uid);
                await preferences.setString("username",firebaseUser.displayName);
        await preferences.setString("photourl",firebaseUser.displayName);

      }else{
         await preferences.setString("id",document[0]["id"]);
        await preferences.setString("username",document[0]["username"]);
        await preferences.setString("photourl",document[0]["photoUrl"]);
     }
     Fluttertoast.showToast(msg:"Logged In");
     setState(() {
       loading=false;
     });
     Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));
    }
     else{
       Fluttertoast.showToast(msg:"Login failed");
     }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle:true,
        title: Text("Login",style: TextStyle(color:Colors.red.shade700)),
        elevation: 0.1,
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: FlatButton(
              color: Colors.redAccent,
              onPressed: (){
                handleSignIn();
              },
              child: Text("sign in / sign up with google",style: TextStyle(color: Colors.white,)),
            ),
          ),

          Visibility(
            visible: loading ?? true,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.9),
                child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
                ),
              ),
            ),

          )
        ],
      ),
      
    );}
}
