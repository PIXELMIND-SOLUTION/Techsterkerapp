// import 'package:flutter/material.dart';
// import 'package:techstecker_app/views/navbar/navbar_screen.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   final _studentFormKey = GlobalKey<FormState>();
//   final _instituteFormKey = GlobalKey<FormState>();

//   // Controllers
//   final _studentEmailController = TextEditingController();
//   final _studentPasswordController = TextEditingController();
//   final _instituteEmailController = TextEditingController();
//   final _institutePasswordController = TextEditingController();

//   bool _studentPasswordVisible = false;
//   bool _institutePasswordVisible = false;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     _studentEmailController.dispose();
//     _studentPasswordController.dispose();
//     _instituteEmailController.dispose();
//     _institutePasswordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               const Color(0xFF8B1538), // Maroon
//               const Color(0xFFB91D47),
//               const Color(0xFF8B1538),
//             ],
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Header with Logo
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 30),
//                 child: Column(
//                   children: [
//                     // Logo
//                     Container(
//                       padding: const EdgeInsets.all(15),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.2),
//                             blurRadius: 20,
//                             spreadRadius: 2,
//                           ),
//                         ],
//                       ),
//                       child: Image.asset(
//                         'assets/logoimage.png',
//                         width: 80,
//                         height: 80,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     const Text(
//                       'Login',
//                       style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         letterSpacing: 1.2,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       'Welcome back!',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white.withOpacity(0.9),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               // Main Content Card
//               Expanded(
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       const SizedBox(height: 30),

//                       // Tab Bar
//                       Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 20),
//                         decoration: BoxDecoration(
//                           color: Colors.grey[200],
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: TabBar(
//                           controller: _tabController,
//                           indicator: BoxDecoration(
//                             color: const Color(0xFF8B1538),
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           labelColor: Colors.white,
//                           unselectedLabelColor: const Color(0xFF8B1538),
//                           labelStyle: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           unselectedLabelStyle: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                           indicatorSize: TabBarIndicatorSize.tab,
//                           dividerColor: Colors.transparent,
//                           tabs: const [
//                             Tab(text: 'Student Login'),
//                             Tab(text: 'Institute Login'),
//                           ],
//                         ),
//                       ),

//                       // Tab Bar View
//                       Expanded(
//                         child: TabBarView(
//                           controller: _tabController,
//                           children: [
//                             // Student Login Form
//                             _buildLoginForm(
//                               formKey: _studentFormKey,
//                               emailController: _studentEmailController,
//                               passwordController: _studentPasswordController,
//                               passwordVisible: _studentPasswordVisible,
//                               onPasswordToggle: () {
//                                 setState(() {
//                                   _studentPasswordVisible =
//                                       !_studentPasswordVisible;
//                                 });
//                               },
//                               loginType: 'Student',
//                             ),

//                             // Institute Login Form
//                             _buildLoginForm(
//                               formKey: _instituteFormKey,
//                               emailController: _instituteEmailController,
//                               passwordController: _institutePasswordController,
//                               passwordVisible: _institutePasswordVisible,
//                               onPasswordToggle: () {
//                                 setState(() {
//                                   _institutePasswordVisible =
//                                       !_institutePasswordVisible;
//                                 });
//                               },
//                               loginType: 'Institute',
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildLoginForm({
//     required GlobalKey<FormState> formKey,
//     required TextEditingController emailController,
//     required TextEditingController passwordController,
//     required bool passwordVisible,
//     required VoidCallback onPasswordToggle,
//     required String loginType,
//   }) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(30),
//       child: Form(
//         key: formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const SizedBox(height: 20),

//             // Email Field
//             // TextFormField(
//             //   controller: emailController,
//             //   keyboardType: TextInputType.emailAddress,
//             //   decoration: InputDecoration(
//             //     labelText: 'UserID',
//             //     hintText: 'Enter your email',
//             //     prefixIcon: const Icon(
//             //       Icons.person,
//             //       color: Color(0xFF8B1538),
//             //     ),
//             //     border: OutlineInputBorder(
//             //       borderRadius: BorderRadius.circular(15),
//             //       borderSide: const BorderSide(color: Colors.grey),
//             //     ),
//             //     enabledBorder: OutlineInputBorder(
//             //       borderRadius: BorderRadius.circular(15),
//             //       borderSide: BorderSide(color: Colors.grey[300]!),
//             //     ),
//             //     focusedBorder: OutlineInputBorder(
//             //       borderRadius: BorderRadius.circular(15),
//             //       borderSide: const BorderSide(
//             //         color: Color(0xFF8B1538),
//             //         width: 2,
//             //       ),
//             //     ),
//             //     filled: true,
//             //     fillColor: Colors.grey[50],
//             //   ),
//             //   validator: (value) {
//             //     if (value == null || value.isEmpty) {
//             //       return 'Please enter your email';
//             //     }
//             //     if (!value.contains('@')) {
//             //       return 'Please enter a valid email';
//             //     }
//             //     return null;
//             //   },
//             // ),
//             TextFormField(
//               controller: emailController,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 labelText: 'UserID',
//                 hintText: 'Enter your UserID',
//                 prefixIcon: const Icon(Icons.person, color: Color(0xFF8B1538)),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                   borderSide: const BorderSide(color: Colors.grey),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                   borderSide: BorderSide(color: Colors.grey[300]!),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                   borderSide: const BorderSide(
//                     color: Color(0xFF8B1538),
//                     width: 2,
//                   ),
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey[50],
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your UserID';
//                 }

//                 // Pattern: Letters followed by numbers (e.g., HICAP7990)
//                 final userIdRegex = RegExp(r'^[A-Z]+[0-9]+$');

//                 if (!userIdRegex.hasMatch(value)) {
//                   return 'Invalid UserID format (Example: HICAP7990)';
//                 }

//                 return null;
//               },
//             ),

//             const SizedBox(height: 20),

//             // Password Field
//             TextFormField(
//               controller: passwordController,
//               obscureText: !passwordVisible,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 hintText: 'Enter your password',
//                 prefixIcon: const Icon(
//                   Icons.lock_outline,
//                   color: Color(0xFF8B1538),
//                 ),
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     passwordVisible
//                         ? Icons.visibility_outlined
//                         : Icons.visibility_off_outlined,
//                     color: const Color(0xFF8B1538),
//                   ),
//                   onPressed: onPasswordToggle,
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                   borderSide: const BorderSide(color: Colors.grey),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                   borderSide: BorderSide(color: Colors.grey[300]!),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                   borderSide: const BorderSide(
//                     color: Color(0xFF8B1538),
//                     width: 2,
//                   ),
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey[50],
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your password';
//                 }
//                 if (value.length < 6) {
//                   return 'Password must be at least 6 characters';
//                 }
//                 return null;
//               },
//             ),

//             const SizedBox(height: 10),

//             // Forgot Password
//             // Align(
//             //   alignment: Alignment.centerRight,
//             //   child: TextButton(
//             //     onPressed: () {
//             //       // Handle forgot password
//             //     },
//             //     child: const Text(
//             //       'Forgot Password?',
//             //       style: TextStyle(
//             //         color: Color(0xFF8B1538),
//             //         fontWeight: FontWeight.w600,
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             const SizedBox(height: 20),

//             // Login Button
//             ElevatedButton(
//               onPressed: () {

//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>NavbarScreen()));
//                 // if (formKey.currentState!.validate()) {
//                 //   // Handle login
//                 //   // print('$loginType Login');
//                 // }
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xFF8B1538),
//                 foregroundColor: Colors.white,
//                 padding: const EdgeInsets.symmetric(vertical: 16),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 elevation: 5,
//                 shadowColor: const Color(0xFF8B1538).withOpacity(0.5),
//               ),
//               child: const Text(
//                 'Login',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1,
//                 ),
//               ),
//             ),

//             const SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSocialButton(IconData icon, String label) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey[300]!),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: IconButton(
//         icon: Icon(icon, size: 30),
//         color: const Color(0xFF8B1538),
//         onPressed: () {
//           // Handle social login
//           print('$label login');
//         },
//       ),
//     );
//   }
// }



















import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techstecker_app/provider/auth/auth_provider.dart';
import 'package:techstecker_app/views/navbar/navbar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _userIdController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void dispose() {
    _userIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      final authProvider = context.read<AuthProvider>();

      final success = await authProvider.login(
        userId: _userIdController.text.trim(),
        generatedPassword: _passwordController.text.trim(),
      );

      if (!mounted) return;

      if (success) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const NavbarScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(authProvider.errorMsg),
            backgroundColor: Colors.red[700],
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF8B1538),
              Color(0xFFB91D47),
              Color(0xFF8B1538),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header with Logo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 20,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/logoimage.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Student Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
              ),

              // Main Content Card
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 20),

                          // UserID Field
                          TextFormField(
                            controller: _userIdController,
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.characters,
                            decoration: InputDecoration(
                              labelText: 'UserID',
                              hintText: 'Enter your UserID',
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Color(0xFF8B1538),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.grey[300]!),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color(0xFF8B1538),
                                  width: 2,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.grey[50],
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your UserID';
                              }
                              final userIdRegex = RegExp(r'^[A-Z]+[0-9]+$');
                              if (!userIdRegex.hasMatch(value)) {
                                return 'Invalid UserID format (Example: HICAP7990)';
                              }
                              return null;
                            },
                          ),

                          const SizedBox(height: 20),

                          // Password Field
                          TextFormField(
                            controller: _passwordController,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: Color(0xFF8B1538),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: const Color(0xFF8B1538),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.grey[300]!),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color(0xFF8B1538),
                                  width: 2,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.grey[50],
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 4) {
                                return 'Password must be at least 4 characters';
                              }
                              return null;
                            },
                          ),

                          const SizedBox(height: 30),

                          // Login Button
                          Consumer<AuthProvider>(
                            builder: (context, auth, _) {
                              return ElevatedButton(
                                onPressed: auth.isLoading ? null : _handleLogin,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF8B1538),
                                  foregroundColor: Colors.white,
                                  disabledBackgroundColor:
                                      const Color(0xFF8B1538).withOpacity(0.6),
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  elevation: 5,
                                  shadowColor:
                                      const Color(0xFF8B1538).withOpacity(0.5),
                                ),
                                child: auth.isLoading
                                    ? const SizedBox(
                                        height: 22,
                                        width: 22,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2.5,
                                        ),
                                      )
                                    : const Text(
                                        'Login',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        ),
                                      ),
                              );
                            },
                          ),

                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
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