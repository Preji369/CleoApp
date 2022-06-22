import 'package:cleo/sign_up_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://www.techprevue.com/wp-content/uploads/2016/09/fashion-online-shopping-sites.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        hintText: "E-mail ID",
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      style: TextStyle(),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                          size: 20,
                        ),
                        hintText: "Password",
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    backgroundColor: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 20, 2, 57)),
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 25),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 10),
                    child: Row(
                      children: [
                        Text(
                          "Don't have an Account?",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpPage(),
                                    ));
                              },
                              child: Text(
                                "Create one!",
                                style: TextStyle(
                                    color: Colors.white,
                                    backgroundColor:
                                        Color.fromARGB(255, 20, 2, 57),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
