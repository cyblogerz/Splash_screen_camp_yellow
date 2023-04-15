import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/search_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea
    (
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
         
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: const [
                  Text("Camp Yellow",style: TextStyle(fontSize: 32),),
                   Padding(
                     padding: EdgeInsets.only(top:8.0),
                     child: Text("practice.learn.compete",style: TextStyle(fontSize: 16),),
                   ),
                ],
              ),
             

              SizedBox(
                height: MediaQuery.of(context).size.height*0.23,
                width: MediaQuery.of(context).size.height*0.23,
                child: SvgPicture.asset(
                  'assets/images/pr.svg',
                ),
              ),
              
              
              const SearchBar(),

               
              ElevatedButton(onPressed: (){},
              
              style: ButtonStyle(
               
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
               child: const Padding(
                 padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 5),
                 child: Text("LOGIN",style: TextStyle(
                  fontSize: 25
                 ),),
               ))
            ],
          ),
        ),
      ),
    );
  }
}
