import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tontineo_mobile_app/state/auth/authentication_Event.dart';
import 'package:tontineo_mobile_app/state/auth/authentication_bloc.dart';
import 'package:tontineo_mobile_app/state/auth/authentication_state.dart';
import 'package:tontineo_mobile_app/ui/auth/login/log_in.dart';
import 'package:tontineo_mobile_app/ui/home/tontine_home_page.dart';

class SignupScreen extends StatefulWidget {
  static String id = 'signup';

  const SignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Text Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();

  List<String> userTypes = ['member', 'admin'];
  late String selectedUserType;

  @override
  void initState() {
    super.initState();
    userTypes = ['member', 'admin'];
    selectedUserType = userTypes[0]; // default value
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create an Account',
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              const Text("Create and Manage your Tontine with ease"),
              const SizedBox(height: 20),
              // const Text('Full Name'),
              // const SizedBox(height: 10),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  prefixIcon:
                      Icon(Icons.person, color: Color.fromARGB(131, 6, 170, 0)),
                  hintText: 'Enter your Name',
                ),
              ),
              // const SizedBox(height: 10),
              // const Text('Phone'),
              const SizedBox(height: 10),
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  prefixIcon:
                      Icon(Icons.phone, color: Color.fromARGB(131, 6, 170, 0)),
                  hintText: 'Enter your phone number',
                ),
              ),
              const SizedBox(height: 10),
              // const Text('Email address'),
              // const SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  prefixIcon:
                      Icon(Icons.email, color: Color.fromARGB(131, 6, 170, 0)),
                  hintText: 'Enter your email address',
                ),
              ),
              const SizedBox(height: 10),
              // const Text('Password'),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  prefixIcon:
                      Icon(Icons.lock, color: Color.fromARGB(131, 6, 170, 0)),
                  hintText: 'Password*',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              // const Text('Select User Type'),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: DropdownButtonFormField<String>(
                  padding: const EdgeInsets.only(left: 8.0),
                  value: selectedUserType,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedUserType = newValue!;
                    });
                  },
                  items:
                      userTypes.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              BlocConsumer<AuthenticationBloc, AuthenticationState>(
                listener: (context, state) {
                  if (state is AuthenticationSuccessState) {
                    // Navigate to home page after successful login
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TontineHomePage(),
                      ),
                    );
                  } else if (state is AuthenticationFailureState) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            content: Text('error'),
                          );
                        });
                  }
                },
                builder: (context, state) {
                  return SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<AuthenticationBloc>(context).add(
                          SignUpUser(
                              emailController.text.trim(),
                              passwordController.text.trim(),
                              phoneController.text.trim(),
                              nameController.text.trim(),
                              selectedUserType),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        minimumSize: const Size.fromHeight(70.0),
                      ),
                      child: Text(
                        state is AuthenticationLoadingState
                            ? '.......'
                            : 'Signup',
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
