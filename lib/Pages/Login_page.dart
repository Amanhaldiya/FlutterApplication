import "package:flutter/material.dart";
import "package:flutter_application_1/utils/routes.dart";
import "package:flutter_application_1/widgets/drawer.dart";

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();

}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changedButton = false;
 
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState == null || _formkey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      },);

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.HomeRoute);

      setState(() {
        changedButton = false;
      },);
    }
  }

  @override
  Widget build(BuildContext context) {
      
    return Material(
          
      child: SingleChildScrollView(
    
          child: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Image.asset(
              "assetss/photos/login.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 32),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: " Enter Username",
                        icon: Icon(Icons.person),
                        labelText: "Username",
                      ),
                      validator: (String? value) {
                        if (value == null || value.trim().length == 0) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: " Enter Password",
                        icon: Icon(Icons.password),
                        labelText: "Password",
                      ),
                      validator: (String? value) {
                        if (value == null || value.trim().length == 0) {
                          return "Password cannot be empty";
                        }
                        //  if(value==null){ return null;}
                        else if (value.length < 9) {
                          return "Password length cannot be less than 9";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    //ElevatedButton(onPressed:(){Navigator.pushNamed(context, MyRoutes.HomeRoute);}, child:Text("Login"),
                    //  style: TextButton.styleFrom(minimumSize:Size(100, 50)),

                    //  )
                    Material(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(changedButton ? 18 : 8),
                      child: InkWell(
                        splashColor: Colors.pink,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          width: changedButton ? 50 : 100,
                          height: 50,
                          alignment: Alignment.center,
                          child: changedButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.pink,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      )
    
      ),
   
    );
  }
}
