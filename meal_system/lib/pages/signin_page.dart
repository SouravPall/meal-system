import 'package:flutter/material.dart';

import '../others/custom_colors.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/signIn-page';
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: CustomColors.appColor),
                  borderRadius: BorderRadius.circular(100), //<-- SEE HERE
                ),
                child: Image.asset('images/person-icon.png'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Sign Up As Mess Manager',
                style: TextStyle(
                  color: CustomColors.appColor,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: CustomColors.appColor,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    labelText: "Manager's Name",
                    labelStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.9),
                        )
                    )
                ),
                style: const TextStyle(
                  color: CustomColors.appColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: CustomColors.appColor,
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    labelText: "Manager's Email",
                    labelStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.9),
                        )
                    )
                ),
                style: const TextStyle(
                  color: CustomColors.appColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: false,
                cursorColor: CustomColors.appColor,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    labelText: "Manager's Password",
                    labelStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility), onPressed: () {  },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.9),
                        )
                    )
                ),
                style: const TextStyle(
                  color: CustomColors.appColor,
                  fontWeight: FontWeight.w600,
                ),
                validator: (value){
                  if (value == null){
                    return 'password is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: false,
                cursorColor: CustomColors.appColor,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    labelText: "Confirm Manager's Password",
                    labelStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility), onPressed: () {  },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.9),
                        )
                    )
                ),
                style: const TextStyle(
                  color: CustomColors.appColor,
                  fontWeight: FontWeight.w600,
                ),
                validator: (value){
                  if (value == null){
                    return 'password is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: CustomColors.appColor,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    labelText: "Referral Code(optional)",
                    labelStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.9),
                        )
                    )
                ),
                style: const TextStyle(
                  color: CustomColors.appColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: CustomColors.appColor,
                ),
                child: const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: CustomColors.appColor,
                  primary: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Already Signed Up? Log In',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
