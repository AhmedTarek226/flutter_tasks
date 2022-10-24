import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.black54,
        actions: const [
        Icon(Icons.favorite_border),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(Icons.list_rounded),
        ),
      ],),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 22),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: AssetImage('assets/images/ahmed.jpeg'),radius: 60,),
            SizedBox(height: 15,),
            Text("Ahmed Tarek",style: TextStyle(letterSpacing: 1.5,color:Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
            SizedBox(height: 5,),
            Text("Front-End Developer".toUpperCase(),style: TextStyle(letterSpacing: 2,fontSize: 18,color:Colors.white70,fontWeight: FontWeight.w400),),
            SizedBox(height: 14,),
            Text("Social profiles",style: TextStyle(letterSpacing: 0.7,fontSize: 17,color:Colors.white70),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(child: Image(image: AssetImage('assets/images/instagram.png'),fit: BoxFit.contain,height: 35,width: 35,),),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(child: Image(image: AssetImage('assets/images/twitter.png'),fit: BoxFit.contain,height: 35,width: 35,),),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(child: Image(image: AssetImage('assets/images/facebook.png'),fit: BoxFit.contain,height: 35,width: 35,),),
                ),
              ],
            ),
            SizedBox(height: 26,),
            Divider(color: Colors.white70,endIndent: 2,height:75,thickness: 1.5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    CircleAvatar(
                      foregroundImage: AssetImage('assets/images/behance.png'),
                      backgroundColor: Colors.black45,
                      radius: 38,
                    ),
                    SizedBox(height: 5,),
                    Text("1.3K",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 17),),
                    Text("Followers",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w400,fontSize: 17),),
                  ],
                ),
                Column(
                  children:  [
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.black38,width: 8),borderRadius: BorderRadius.circular(50)),
                      child: const CircleAvatar(
                        foregroundImage: AssetImage('assets/images/linkedin.png'),
                        backgroundColor: Colors.black45,
                        radius: 30,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("1.3K",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 17),),
                    Text("Followers",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w400,fontSize: 17),),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
