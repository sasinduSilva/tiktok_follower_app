import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_tiktok_followers/home_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,

      body: Container(
        child : SingleChildScrollView(

          padding: EdgeInsets.symmetric(vertical: 150),

          child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('assets/tikio_ss_logo.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('100% Real Followers Guaranteed', style: TextStyle(fontSize: 14, color: Colors.white, decoration: TextDecoration.none),),
                    ),
                  ],
                ),
              ),

              Container(
                child : Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 55),
                      child: TextFormField(

                        style: TextStyle(fontSize: 20, color: Colors.white),
                        onChanged: (value){
                          print(value);
                        },
                        controller: _usernameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box_outlined,color: Colors.white,),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),

                          // labelText: 'Enter your username',
                          hintText: '@Username',
                          // labelStyle: TextStyle(fontSize: 24, color: Colors.white),
                          hintStyle: TextStyle(fontSize: 20, color: Colors.white),




                        ),

                      ),

                    ),
                 TextButton(
                    child: Text('Continue', style: TextStyle(color: Colors.black),),
                    onPressed: (){
                      loginButtonOnClick();
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.grey
                      // foregroundColor: Colors.grey,

                      // elevation: 2
                    )
                ),
                  ]
              ),
              ),
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  // padding: EdgeInsets.zero,
                  children: [
                    ListTile(
                      title: Text('Your Account must be public', style: TextStyle(color: Colors.white, fontSize: 12),),
                      leading: Icon(Icons.check, color: Colors.green,),
                    ),
                    ListTile(
                      title: Text('Username must be the same as used in tiktok', style: TextStyle(color: Colors.white, fontSize: 12),),
                      leading: Icon(Icons.check, color: Colors.green,),
                    )
                  ],
                ),
              ),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              //   child: ListTile(
              //     title: Text('Username must be the same as used in tiktok', style: TextStyle(color: Colors.white, fontSize: 12),),
              //     leading: Icon(Icons.check, color: Colors.green,),
              //   ),
              // ),
              Container(
                child: Text('version 1.0.0', style: TextStyle(color: Colors.white, fontSize: 14),),
              )

            ],
          ),
        )
      )

      );



  }

  void loginButtonOnClick(){
    if(!_usernameController.text.startsWith('@')){
        showAlertDialog(context);
        return;
    }

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage() ));




  }

  void showAlertDialog(BuildContext context){
    Widget okButton = ElevatedButton(onPressed: (){
      Navigator.pop(context);
    }, child: Text('OK'));
    AlertDialog alertDialog = AlertDialog(
      title: Text('error'),
      content: Text('please enter username with @'),
      actions: [
        okButton
      ],


    );
    showDialog(context: context, builder: (BuildContext context){
      return alertDialog;
    });
  }
}
