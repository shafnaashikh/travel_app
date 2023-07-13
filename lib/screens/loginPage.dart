import 'package:flutter/material.dart';
import 'package:http/http.dart';
class loginPage extends StatefulWidget {
   loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
var email=TextEditingController();
var pass=TextEditingController();
Future<void> sendData() async {
  var data= {
    'email': email.text,
    'password':pass.text,
  };
var response= await post(Uri.parse('http/192.168.0.122/sample/email.php'),body: data);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://w0.peakpx.com/wallpaper/113/263/HD-wallpaper-mountains-blue-thumbnail.jpg'),fit: BoxFit.cover,),
          ),
        child: Column(
          children: [
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: email,
              keyboardType: TextInputType.emailAddress ,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.alternate_email),
                  hintText: 'Email',

                ),
              ),
            ),
            // SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextField(
                controller: pass,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.white
                  ),
                  onPressed: (){
                    print(email.text);
                    print(pass.text);
                  }, child: Text('Login', style: TextStyle(color: Colors.black),),
                  ),
              ),
            ),
            TextButton(onPressed: (){}, child: Text('Forgot Password',style: TextStyle(color: Colors.white),)),
            SizedBox(height: 120,),
            Container(
              width: 250,
              child: ElevatedButton(
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.white
                ),
                onPressed: (){}, child: Center(
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                            height: 15,
                            width: 15,
                            child: Image(image: AssetImage('assets/googlee.png',),fit: BoxFit.cover,)),
                      ),
                      SizedBox(width: 7,),
                      Text('Sign in with Google', style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 250,
              child: ElevatedButton(
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900]
                ),
                onPressed: (){}, child: Center(
                  child: Wrap(
                    children: [
                      Icon(Icons.facebook, size: 20,),
                      SizedBox(width: 7,),
                      Text('Sign in with Facebook', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
        ),



      );

  }
}
