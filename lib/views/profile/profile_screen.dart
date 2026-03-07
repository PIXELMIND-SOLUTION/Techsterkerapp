// import 'package:flutter/material.dart';
// import 'package:techstecker_app/views/auth/login_screen.dart';
// import 'package:techstecker_app/views/profile/edit_profile_screen.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final screenWidth = MediaQuery.of(context).size.width;
//     // final isWideScreen = screenWidth > 1024;
//     // final isMediumScreen = screenWidth > 768 && screenWidth <= 1024;

//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F7FA),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Header Section
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'My Profile',
//                                 style: TextStyle(
//                                   fontSize: 28,
//                                   fontWeight: FontWeight.w800,
//                                   color: Colors.grey[900],
//                                   letterSpacing: -0.5,
//                                 ),
//                               ),
//                               const SizedBox(height: 4),
//                               Text(
//                                 'Manage your personal information',
//                                 style: TextStyle(
//                                   fontSize: 13,
//                                   color: Colors.grey[600],
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         _buildBackButton(context),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // Hero Profile Card
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 8),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: const LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [
//                       Color(0xFF4F7CF6),
//                       Color(0xFF7B5FDF),
//                       Color(0xFFD946EF),
//                       Color(0xFFEC4899),
//                     ],
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color(0xFF7B5FDF).withOpacity(0.3),
//                       blurRadius: 20,
//                       offset: const Offset(0, 8),
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Stack(
//                     children: [
//                       // Decorative circles
//                       Positioned(
//                         top: -40,
//                         right: -40,
//                         child: Container(
//                           width: 120,
//                           height: 120,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.white.withOpacity(0.1),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(24),
//                         child: LayoutBuilder(
//                           builder: (context, constraints) {
//                             final isCompact = constraints.maxWidth < 800;

//                             if (isCompact) {
//                               return Column(
//                                 children: [
//                                   Row(
//                                     children: [
//                                       _buildAvatar(),
//                                       const SizedBox(width: 16),
//                                       Expanded(
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             const Text(
//                                               'Vijay',
//                                               style: TextStyle(
//                                                 fontSize: 24,
//                                                 fontWeight: FontWeight.w700,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                             const SizedBox(height: 4),
//                                             const Text(
//                                               'Digital Marketing with Ali',
//                                               style: TextStyle(
//                                                 fontSize: 13,
//                                                 color: Colors.white,
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   const SizedBox(height: 16),
//                                   Wrap(
//                                     spacing: 8,
//                                     runSpacing: 8,
//                                     children: [
//                                       _buildInfoChip(
//                                         'ID: HICAP7990',
//                                         Icons.badge_outlined,
//                                       ),
//                                       _buildInfoChip(
//                                         'vijay999@gmail.com',
//                                         Icons.email_outlined,
//                                       ),
//                                     ],
//                                   ),
//                                   const SizedBox(height: 16),
//                                 ],
//                               );
//                             }

//                             return Row(
//                               children: [
//                                 _buildAvatar(),
//                                 const SizedBox(width: 20),
//                                 Expanded(
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       const Text(
//                                         'Vijay',
//                                         style: TextStyle(
//                                           fontSize: 26,
//                                           fontWeight: FontWeight.w700,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 4),
//                                       const Text(
//                                         'Digital Marketing with Ali',
//                                         style: TextStyle(
//                                           fontSize: 14,
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 12),
//                                       Wrap(
//                                         spacing: 8,
//                                         runSpacing: 8,
//                                         children: [
//                                           _buildInfoChip(
//                                             'ID: HICAP7990',
//                                             Icons.badge_outlined,
//                                           ),
//                                           _buildInfoChip(
//                                             'vijay999@gmail.com',
//                                             Icons.email_outlined,
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 24),

//               // ── ID CARD SECTION ──────────────────────────────────────────
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: Text(
//                   'Your ID Card',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.grey[900],
//                     letterSpacing: -0.3,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 12),

//               _buildIdCard(),

//               const SizedBox(height: 12),

//               _buildDownloadIdCardButton(context),

//               const SizedBox(height: 24),
//               // ── END ID CARD SECTION ──────────────────────────────────────

//               // Content Layout
//               LayoutBuilder(
//                 builder: (context, constraints) {
//                   final isWideLayout = constraints.maxWidth > 900;

//                   if (isWideLayout) {
//                     return Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Expanded(flex: 7, child: _buildLeftColumn(context)),
//                         const SizedBox(width: 16),
//                         Expanded(flex: 3, child: _buildRightColumn(context)),
//                       ],
//                     );
//                   }

//                   return Column(
//                     children: [
//                       _buildLeftColumn(context),
//                       const SizedBox(height: 16),
//                       _buildRightColumn(context),
//                     ],
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ── ID CARD WIDGET ─────────────────────────────────────────────────────────
//   Widget _buildIdCard() {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF7B5FDF).withOpacity(0.18),
//             blurRadius: 24,
//             offset: const Offset(0, 8),
//           ),
//         ],
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(20),
//         child: Column(
//           children: [
//             // Card header with gradient
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: [
//                     Color(0xFF4F7CF6),
//                     Color(0xFF7B5FDF),
//                     Color(0xFFD946EF),
//                   ],
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(6),
//                         decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(0.25),
//                           shape: BoxShape.circle,
//                         ),
//                         child: const Icon(
//                           Icons.school,
//                           color: Colors.white,
//                           size: 16,
//                         ),
//                       ),
//                       const SizedBox(width: 8),
//                       const Text(
//                         'TECHSTERKER',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w800,
//                           color: Colors.white,
//                           letterSpacing: 1.5,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     'Student ID Card',
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Colors.white.withOpacity(0.85),
//                       fontWeight: FontWeight.w400,
//                       letterSpacing: 0.5,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // Card body
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Avatar + Name row
//                   Row(
//                     children: [
//                       Container(
//                         width: 60,
//                         height: 60,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           gradient: const LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                             colors: [Color(0xFF7B5FDF), Color(0xFF4F7CF6)],
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0xFF7B5FDF).withOpacity(0.3),
//                               blurRadius: 10,
//                               offset: const Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: const Center(
//                           child: Text(
//                             'V',
//                             style: TextStyle(
//                               fontSize: 26,
//                               fontWeight: FontWeight.w700,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 16),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Vijay',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w700,
//                               color: Colors.grey[900],
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           const Text(
//                             'Digital Marketing with Ali',
//                             style: TextStyle(
//                               fontSize: 13,
//                               fontWeight: FontWeight.w500,
//                               color: Color(0xFF4F7CF6),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),

//                   const SizedBox(height: 20),

//                   // Divider
//                   Divider(color: Colors.grey[100], thickness: 1),

//                   const SizedBox(height: 16),

//                   // Info rows
//                   _buildIdCardInfoRow(
//                     Icons.email_outlined,
//                     'Email',
//                     'vijay999@gmail.com',
//                   ),
//                   const SizedBox(height: 14),
//                   _buildIdCardInfoRow(
//                     Icons.phone_outlined,
//                     'Mobile',
//                     '6303092888',
//                   ),
//                   const SizedBox(height: 14),
//                   _buildIdCardInfoRow(
//                     Icons.badge_outlined,
//                     'User ID',
//                     'HICAP7990',
//                   ),

//                   const SizedBox(height: 20),

//                   // ID Card Number box
//                   Container(
//                     width: double.infinity,
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 14,
//                       horizontal: 16,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[50],
//                       borderRadius: BorderRadius.circular(12),
//                       border: Border.all(color: Colors.grey[200]!),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'ID Card Number',
//                           style: TextStyle(
//                             fontSize: 11,
//                             color: Colors.grey[500],
//                             fontWeight: FontWeight.w500,
//                             letterSpacing: 0.5,
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           'HICAP7990',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w700,
//                             color: Colors.grey[900],
//                             letterSpacing: 1.2,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // Bottom gradient strip
//             Container(
//               height: 6,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Color(0xFF4F7CF6),
//                     Color(0xFF7B5FDF),
//                     Color(0xFFD946EF),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildIdCardInfoRow(IconData icon, String label, String value) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: const Color(0xFF4F7CF6).withOpacity(0.08),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Icon(icon, size: 16, color: const Color(0xFF4F7CF6)),
//         ),
//         const SizedBox(width: 12),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               label,
//               style: TextStyle(
//                 fontSize: 11,
//                 color: Colors.grey[500],
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: 2),
//             Text(
//               value,
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.grey[900],
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildDownloadIdCardButton(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       width: double.infinity,
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           onTap: () {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 backgroundColor: Colors.green,
//                 content: Text('Id card downloaded successfully'),
//               ),
//             );
//           },
//           borderRadius: BorderRadius.circular(14),
//           child: Ink(
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: [
//                   Color(0xFF4F7CF6),
//                   Color(0xFF7B5FDF),
//                   Color(0xFFD946EF),
//                 ],
//               ),
//               borderRadius: BorderRadius.circular(14),
//               boxShadow: [
//                 BoxShadow(
//                   color: const Color(0xFF7B5FDF).withOpacity(0.35),
//                   blurRadius: 16,
//                   offset: const Offset(0, 6),
//                 ),
//               ],
//             ),
//             child: const Padding(
//               padding: EdgeInsets.symmetric(vertical: 16),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.download_rounded, color: Colors.white, size: 20),
//                   SizedBox(width: 10),
//                   Text(
//                     'Download ID Card',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.white,
//                       letterSpacing: 0.3,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   // ── END ID CARD WIDGET ────────────────────────────────────────────────────

//   Widget _buildBackButton(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             blurRadius: 8,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           onTap: () => Navigator.pop(context),
//           borderRadius: BorderRadius.circular(12),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(Icons.arrow_back, size: 18, color: Colors.grey[700]),
//                 const SizedBox(width: 6),
//                 Text(
//                   'Back',
//                   style: TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.grey[700],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildAvatar() {
//     return Stack(
//       children: [
//         Container(
//           width: 80,
//           height: 80,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             border: Border.all(color: Colors.white.withOpacity(0.3), width: 3),
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Colors.white.withOpacity(0.3),
//                 Colors.white.withOpacity(0.1),
//               ],
//             ),
//           ),
//           child: const Center(
//             child: Text(
//               'V',
//               style: TextStyle(
//                 fontSize: 36,
//                 fontWeight: FontWeight.w700,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           bottom: 0,
//           right: 0,
//           child: Container(
//             padding: const EdgeInsets.all(6),
//             decoration: BoxDecoration(
//               color: const Color(0xFF7B5FDF),
//               shape: BoxShape.circle,
//               border: Border.all(color: Colors.white, width: 2),
//             ),
//             child: const Icon(Icons.camera_alt, size: 14, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildLeftColumn(BuildContext context) {
//     return Column(
//       children: [
//         _buildPersonalInfoCard(context),
//         const SizedBox(height: 16),
//         _buildCourseInfoCard(),
//       ],
//     );
//   }

//   Widget _buildRightColumn(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(height: 16),
//         _buildQuickActionsCard(context),
//         const SizedBox(height: 16),
//         _buildNeedHelpCard(context),
//       ],
//     );
//   }

//   Widget _buildPersonalInfoCard(BuildContext context) {
//     return _buildSectionCard(
//       icon: Icons.person_outline,
//       title: 'Personal Information',
//       action: _buildEditButton(context),
//       child: Column(
//         children: [
//           _buildInfoField('Full Name', 'Vijay'),
//           const SizedBox(height: 12),
//           _buildInfoField('Email Address', 'vijay999@gmail.com'),
//           const SizedBox(height: 12),
//           _buildInfoField('Mobile Number', '6303092888'),
//           const SizedBox(height: 12),
//           _buildInfoField('User ID', 'HICAP7990'),
//           const SizedBox(height: 12),
//           _buildInfoField('Degree', 'B.Tech'),
//           const SizedBox(height: 12),
//           _buildInfoField('Department', 'ECE'),
//           const SizedBox(height: 12),
//           _buildInfoField('Year of Graduation', '2023'),
//         ],
//       ),
//     );
//   }

//   Widget _buildCourseInfoCard() {
//     return _buildSectionCard(
//       icon: Icons.school_outlined,
//       title: 'Course Information',
//       child: Column(
//         children: [
//           _buildCourseInfoCardItem(
//             icon: Icons.book_outlined,
//             label: 'Enrolled Course',
//             value: 'Digital Marketing with Ali',
//             color: const Color(0xFF4F7CF6),
//           ),
//           const SizedBox(height: 12),
//           _buildCourseInfoCardItem(
//             icon: Icons.lock_outline,
//             label: 'Payment Status',
//             value: 'Completed',
//             color: const Color(0xFF10B981),
//             valueColor: const Color(0xFF10B981),
//           ),
//           const SizedBox(height: 12),
//           _buildCourseInfoCardItem(
//             icon: Icons.currency_rupee,
//             label: 'Total Price',
//             value: '₹70,798.82',
//             color: const Color(0xFF10B981),
//           ),
//           const SizedBox(height: 12),
//           _buildCourseInfoCardItem(
//             icon: Icons.receipt_outlined,
//             label: 'Remaining Payment',
//             value: '₹0',
//             color: const Color(0xFFF59E0B),
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _buildDateInfo('Account Created', 'Nov 15, 2025'),
//               _buildDateInfo('Last Updated', 'Jan 31, 2026', isEnd: true),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildQuickActionsCard(BuildContext context) {
//     return _buildSectionCard(
//       icon: Icons.bolt_outlined,
//       title: 'Quick Actions',
//       child: Column(
//         children: [
//           _buildActionButton(
//             context: context,
//             icon: Icons.book_outlined,
//             label: 'Browse Courses',
//             color: const Color(0xFF4F7CF6),
//             onTap: () {},
//           ),
//           const SizedBox(height: 10),
//           _buildActionButton(
//             context: context,

//             icon: Icons.dashboard_outlined,
//             label: 'Go to Dashboard',
//             color: const Color(0xFF10B981),
//             onTap: () {},
//           ),
//           const SizedBox(height: 10),
//           _buildActionButton(
//             context: context,

//             icon: Icons.photo_camera_outlined,
//             label: 'Change Photo',
//             color: const Color(0xFFEC4899),
//             onTap: () {},
//           ),
//           const SizedBox(height: 10),

//           // _buildActionButton(
//           //   context: context,

//           //   icon: Icons.logout,
//           //   label: 'Logout',
//           //   color: const Color(0xFFEF4444),
//           //   onTap: () {
//           //     Navigator.pushReplacement(
//           //       context,
//           //       MaterialPageRoute(builder: (context) => const LoginScreen()),
//           //     );
//           //   },
//           // ),
//           _buildActionButton(
//             context: context,
//             icon: Icons.logout,
//             label: 'Logout',
//             color: const Color(0xFFEF4444),
//             onTap: () {
//               showDialog(
//                 context: context,
//                 builder: (context) => AlertDialog(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   title: const Text("Confirm Logout"),
//                   content: const Text("Are you sure you want to logout?"),
//                   actions: [
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pop(context); // Close dialog
//                       },
//                       child: const Text("Cancel"),
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFFEF4444),
//                       ),
//                       onPressed: () async {
//                         Navigator.pop(context);

//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const LoginScreen(),
//                           ),
//                         );
//                       },
//                       child: const Text(
//                         "Logout",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNeedHelpCard(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
//         ),
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF6366F1).withOpacity(0.3),
//             blurRadius: 15,
//             offset: const Offset(0, 6),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(0.2),
//               shape: BoxShape.circle,
//             ),
//             child: const Icon(
//               Icons.phone_outlined,
//               color: Colors.white,
//               size: 24,
//             ),
//           ),
//           const SizedBox(height: 12),
//           const Text(
//             'Need Help?',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w700,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(height: 6),
//           const Text(
//             'Our support team is here 24/7',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.white,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           const SizedBox(height: 16),
//           _buildContactRow(Icons.email_outlined, 'support@techsterker.com'),
//           const SizedBox(height: 10),
//           _buildContactRow(Icons.phone, '+91 9090909090'),
//           const SizedBox(height: 16),
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: () async {
//                 final Uri phoneUri = Uri(scheme: 'tel', path: '+919090909090');

//                 if (await canLaunchUrl(phoneUri)) {
//                   await launchUrl(phoneUri);
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Could not open dialer')),
//                   );
//                 }
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.white,
//                 foregroundColor: const Color(0xFF6366F1),
//                 padding: const EdgeInsets.symmetric(vertical: 12),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 elevation: 0,
//               ),
//               child: const Text(
//                 'Contact Support',
//                 style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildContactRow(IconData icon, String text) {
//     return Row(
//       children: [
//         Icon(icon, color: Colors.white, size: 14),
//         const SizedBox(width: 8),
//         Expanded(
//           child: Text(
//             text,
//             style: const TextStyle(
//               fontSize: 11,
//               color: Colors.white,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDateInfo(String label, String date, {bool isEnd = false}) {
//     return Expanded(
//       child: Column(
//         crossAxisAlignment: isEnd
//             ? CrossAxisAlignment.end
//             : CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 11,
//               color: Colors.grey[600],
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             date,
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.grey[900],
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildInfoChip(String text, IconData icon) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.white.withOpacity(0.3)),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, size: 14, color: Colors.white),
//           const SizedBox(width: 6),
//           Text(
//             text,
//             style: const TextStyle(
//               fontSize: 12,
//               color: Colors.white,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSectionCard({
//     required IconData icon,
//     required String title,
//     required Widget child,
//     Widget? action,
//   }) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.08),
//             blurRadius: 15,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF4F7CF6).withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Icon(icon, color: const Color(0xFF4F7CF6), size: 20),
//               ),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.grey[900],
//                   ),
//                 ),
//               ),
//               if (action != null) action,
//             ],
//           ),
//           const SizedBox(height: 20),
//           child,
//         ],
//       ),
//     );
//   }

//   Widget _buildEditButton(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => EditProfileScreen()),
//         );
//       },
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
//         decoration: BoxDecoration(
//           gradient: const LinearGradient(
//             colors: [Color(0xFF4F7CF6), Color(0xFF7B5FDF)],
//           ),
//           borderRadius: BorderRadius.circular(8),
//           boxShadow: [
//             BoxShadow(
//               color: const Color(0xFF4F7CF6).withOpacity(0.3),
//               blurRadius: 6,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: const Text(
//           'Edit Profile',
//           style: TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.w600,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoField(String label, String value) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.grey[50],
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Colors.grey[200]!, width: 1),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.grey[500],
//               fontWeight: FontWeight.w500,
//               letterSpacing: 0.3,
//             ),
//           ),
//           const SizedBox(height: 6),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 15,
//               color: Colors.grey[900],
//               fontWeight: FontWeight.w600,
//               letterSpacing: 0.2,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCourseInfoCardItem({
//     required IconData icon,
//     required String label,
//     required String value,
//     required Color color,
//     Color? valueColor,
//   }) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.08),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: color.withOpacity(0.2), width: 1),
//       ),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: color.withOpacity(0.15),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Icon(icon, color: color, size: 20),
//           ),
//           const SizedBox(width: 14),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.grey[600],
//                     fontWeight: FontWeight.w500,
//                     letterSpacing: 0.3,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: valueColor ?? Colors.grey[900],
//                     fontWeight: FontWeight.w700,
//                     letterSpacing: 0.2,
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildActionButton({
//     required BuildContext context,
//     required IconData icon,
//     required String label,
//     required Color color,
//     required VoidCallback onTap,
//   }) {
//     return Material(
//       color: Colors.transparent,
//       child: InkWell(
//         onTap: onTap,
//         borderRadius: BorderRadius.circular(10),
//         child: Container(
//           padding: const EdgeInsets.all(14),
//           decoration: BoxDecoration(
//             color: color.withOpacity(0.08),
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: color.withOpacity(0.2)),
//           ),
//           child: Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(6),
//                 decoration: BoxDecoration(
//                   color: color.withOpacity(0.15),
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 child: Icon(icon, color: color, size: 18),
//               ),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: Text(
//                   label,
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.grey[900],
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey[400]),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }






















// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:techstecker_app/helper/shared_preference.dart';
// // import 'package:techstecker_app/views/auth/login_screen.dart';
// // import 'package:techstecker_app/views/profile/edit_profile_screen.dart';
// // import 'package:url_launcher/url_launcher.dart';
// // class UserProfile {
// //   final String id;
// //   final String name;
// //   final String email;
// //   final String mobile;
// //   final String userId;
// //   final String course;
// //   final String degree;
// //   final String department;
// //   final int yearOfPassedOut;
// //   final String paymentStatus;
// //   final double totalPrice;
// //   final double remainingPayment;
// //   final String createdAt;
// //   final String updatedAt;
// //   final String profileImage;

// //   const UserProfile({
// //     required this.id,
// //     required this.name,
// //     required this.email,
// //     required this.mobile,
// //     required this.userId,
// //     required this.course,
// //     required this.degree,
// //     required this.department,
// //     required this.yearOfPassedOut,
// //     required this.paymentStatus,
// //     required this.totalPrice,
// //     required this.remainingPayment,
// //     required this.createdAt,
// //     required this.updatedAt,
// //     required this.profileImage,
// //   });

// //   factory UserProfile.fromJson(Map<String, dynamic> json) {
// //     return UserProfile(
// //       id:               json['_id']             ?? '',
// //       name:             json['name']             ?? '',
// //       email:            json['email']            ?? '',
// //       mobile:           json['mobile']           ?? json['phoneNumber'] ?? '',
// //       userId:           json['userId']           ?? '',
// //       course:           json['course']           ?? '',
// //       degree:           json['degree']           ?? '',
// //       department:       json['department']       ?? '',
// //       yearOfPassedOut:  json['yearOfPassedOut']  ?? 0,
// //       paymentStatus:    json['paymentStatus']    ?? '',
// //       totalPrice:       (json['totalPrice']      ?? 0).toDouble(),
// //       remainingPayment: (json['remainingPayment']?? 0).toDouble(),
// //       createdAt:        json['createdAt']        ?? '',
// //       updatedAt:        json['updatedAt']        ?? '',
// //       profileImage:     json['profileImage']     ?? '',
// //     );
// //   }

// //   /// Formatted ₹ amounts
// //   String get formattedTotalPrice =>
// //       '₹${totalPrice.toStringAsFixed(2).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}';

// //   String get formattedRemainingPayment =>
// //       remainingPayment == 0 ? '₹0' : '₹${remainingPayment.toStringAsFixed(2)}';

// //   /// "Nov 15, 2025" style
// //   String get formattedCreatedAt  => _formatDate(createdAt);
// //   String get formattedUpdatedAt  => _formatDate(updatedAt);

// //   static String _formatDate(String iso) {
// //     try {
// //       final dt = DateTime.parse(iso);
// //       const months = [
// //         'Jan','Feb','Mar','Apr','May','Jun',
// //         'Jul','Aug','Sep','Oct','Nov','Dec',
// //       ];
// //       return '${months[dt.month - 1]} ${dt.day}, ${dt.year}';
// //     } catch (_) {
// //       return iso;
// //     }
// //   }

// //   String get initials {
// //     final parts = name.trim().split(' ');
// //     if (parts.isEmpty) return 'U';
// //     if (parts.length == 1) return parts[0][0].toUpperCase();
// //     return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
// //   }
// // }

// // // ── ProfileScreen ─────────────────────────────────────────────────────────────
// // class ProfileScreen extends StatefulWidget {
// //   const ProfileScreen({super.key});

// //   @override
// //   State<ProfileScreen> createState() => _ProfileScreenState();
// // }

// // class _ProfileScreenState extends State<ProfileScreen> {
// //   UserProfile? _profile;
// //   bool _isLoading = true;
// //   String? _errorMessage;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _fetchProfile();
// //   }

// //   Future<void> _fetchProfile() async {
// //     setState(() {
// //       _isLoading    = true;
// //       _errorMessage = null;
// //     });

// //     try {
// //       final userId = await SharedPreferencesHelper.getMongoId();
// //       if (userId == null || userId.isEmpty) {
// //         setState(() {
// //           _errorMessage = 'User ID not found. Please log in again.';
// //           _isLoading    = false;
// //         });
// //         return;
// //       }

// //       final token = await SharedPreferencesHelper.getToken();

// //       final uri = Uri.parse(
// //         'https://api.techsterker.com/api/myprofile/$userId',
// //       );

// //       final response = await http.get(
// //         uri,
// //         headers: {
// //           'Content-Type': 'application/json',
// //           if (token != null && token.isNotEmpty)
// //             'Authorization': 'Bearer $token',
// //         },
// //       );


// //       print('Response status code for get profile api ${response.statusCode}');
// //             print('Response bodyyyy code for get profile api ${response.body}');
// //             print('Userrrrrrrrrrrrrrrrrr iddddddddddddd $userId');


// //       if (response.statusCode == 200) {
// //         final data = jsonDecode(response.body) as Map<String, dynamic>;
// //         if (data['success'] == true && data['profile'] != null) {
// //           setState(() {
// //             _profile   = UserProfile.fromJson(data['profile']);
// //             _isLoading = false;
// //           });
// //         } else {
// //           setState(() {
// //             _errorMessage = data['message'] ?? 'Failed to fetch profile.';
// //             _isLoading    = false;
// //           });
// //         }
// //       } else {
// //         setState(() {
// //           _errorMessage = 'Server error: ${response.statusCode}';
// //           _isLoading    = false;
// //         });
// //       }
// //     } catch (e) {
// //       setState(() {
// //         _errorMessage = 'Network error: ${e.toString()}';
// //         _isLoading    = false;
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xFFF5F7FA),
// //       body: SafeArea(
// //         child: _isLoading
// //             ? _buildLoadingState()
// //             : _errorMessage != null
// //                 ? _buildErrorState()
// //                 : _buildContent(),
// //       ),
// //     );
// //   }

// //   // ── Loading ────────────────────────────────────────────────────────────────
// //   Widget _buildLoadingState() {
// //     return Center(
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           const CircularProgressIndicator(color: Color(0xFF7B5FDF)),
// //           const SizedBox(height: 16),
// //           Text(
// //             'Loading profile…',
// //             style: TextStyle(fontSize: 14, color: Colors.grey[600]),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // ── Error ──────────────────────────────────────────────────────────────────
// //   Widget _buildErrorState() {
// //     return Center(
// //       child: Padding(
// //         padding: const EdgeInsets.all(24),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Icon(Icons.error_outline, size: 64, color: Colors.red[400]),
// //             const SizedBox(height: 16),
// //             Text(
// //               'Oops! Something went wrong',
// //               style: TextStyle(
// //                 fontSize: 18,
// //                 fontWeight: FontWeight.w700,
// //                 color: Colors.grey[900],
// //               ),
// //             ),
// //             const SizedBox(height: 8),
// //             Text(
// //               _errorMessage ?? 'Unknown error',
// //               textAlign: TextAlign.center,
// //               style: TextStyle(fontSize: 13, color: Colors.grey[600]),
// //             ),
// //             const SizedBox(height: 24),
// //             ElevatedButton.icon(
// //               onPressed: _fetchProfile,
// //               icon: const Icon(Icons.refresh),
// //               label: const Text('Retry'),
// //               style: ElevatedButton.styleFrom(
// //                 backgroundColor: const Color(0xFF7B5FDF),
// //                 foregroundColor: Colors.white,
// //                 padding: const EdgeInsets.symmetric(
// //                   horizontal: 24, vertical: 12,
// //                 ),
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(10),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // ── Main content ───────────────────────────────────────────────────────────
// //   Widget _buildContent() {
// //     final p = _profile!;
// //     return SingleChildScrollView(
// //       padding: const EdgeInsets.all(16),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           // Header
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Expanded(
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     children: [
// //                       Text(
// //                         'My Profile',
// //                         style: TextStyle(
// //                           fontSize: 28,
// //                           fontWeight: FontWeight.w800,
// //                           color: Colors.grey[900],
// //                           letterSpacing: -0.5,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 4),
// //                       Text(
// //                         'Manage your personal information',
// //                         style: TextStyle(
// //                           fontSize: 13,
// //                           color: Colors.grey[600],
// //                           fontWeight: FontWeight.w400,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 const SizedBox(width: 16),
// //                 _buildBackButton(),
// //               ],
// //             ),
// //           ),

// //           const SizedBox(height: 16),

// //           // Hero card
// //           _buildHeroCard(p),

// //           const SizedBox(height: 24),

// //           // ID Card section
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 8),
// //             child: Text(
// //               'Your ID Card',
// //               style: TextStyle(
// //                 fontSize: 18,
// //                 fontWeight: FontWeight.w700,
// //                 color: Colors.grey[900],
// //                 letterSpacing: -0.3,
// //               ),
// //             ),
// //           ),

// //           const SizedBox(height: 12),
// //           _buildIdCard(p),
// //           const SizedBox(height: 12),
// //           _buildDownloadIdCardButton(),
// //           const SizedBox(height: 24),

// //           // Responsive layout
// //           LayoutBuilder(
// //             builder: (context, constraints) {
// //               final isWide = constraints.maxWidth > 900;
// //               if (isWide) {
// //                 return Row(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Expanded(flex: 7, child: _buildLeftColumn(p)),
// //                     const SizedBox(width: 16),
// //                     Expanded(flex: 3, child: _buildRightColumn()),
// //                   ],
// //                 );
// //               }
// //               return Column(
// //                 children: [
// //                   _buildLeftColumn(p),
// //                   const SizedBox(height: 16),
// //                   _buildRightColumn(),
// //                 ],
// //               );
// //             },
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // ── Hero Card ──────────────────────────────────────────────────────────────
// //   Widget _buildHeroCard(UserProfile p) {
// //     return Container(
// //       margin: const EdgeInsets.symmetric(horizontal: 8),
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(20),
// //         gradient: const LinearGradient(
// //           begin: Alignment.topLeft,
// //           end: Alignment.bottomRight,
// //           colors: [
// //             Color(0xFF4F7CF6),
// //             Color(0xFF7B5FDF),
// //             Color(0xFFD946EF),
// //             Color(0xFFEC4899),
// //           ],
// //         ),
// //         boxShadow: [
// //           BoxShadow(
// //             color: const Color(0xFF7B5FDF).withOpacity(0.3),
// //             blurRadius: 20,
// //             offset: const Offset(0, 8),
// //           ),
// //         ],
// //       ),
// //       child: ClipRRect(
// //         borderRadius: BorderRadius.circular(20),
// //         child: Stack(
// //           children: [
// //             Positioned(
// //               top: -40,
// //               right: -40,
// //               child: Container(
// //                 width: 120,
// //                 height: 120,
// //                 decoration: BoxDecoration(
// //                   shape: BoxShape.circle,
// //                   color: Colors.white.withOpacity(0.1),
// //                 ),
// //               ),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.all(24),
// //               child: LayoutBuilder(
// //                 builder: (context, constraints) {
// //                   final isCompact = constraints.maxWidth < 800;
// //                   if (isCompact) {
// //                     return Column(
// //                       children: [
// //                         Row(
// //                           children: [
// //                             _buildAvatar(p),
// //                             const SizedBox(width: 16),
// //                             Expanded(
// //                               child: Column(
// //                                 crossAxisAlignment: CrossAxisAlignment.start,
// //                                 children: [
// //                                   Text(
// //                                     p.name,
// //                                     style: const TextStyle(
// //                                       fontSize: 24,
// //                                       fontWeight: FontWeight.w700,
// //                                       color: Colors.white,
// //                                     ),
// //                                   ),
// //                                   const SizedBox(height: 4),
// //                                   Text(
// //                                     p.course,
// //                                     style: const TextStyle(
// //                                       fontSize: 13,
// //                                       color: Colors.white,
// //                                       fontWeight: FontWeight.w400,
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                         const SizedBox(height: 16),
// //                         Wrap(
// //                           spacing: 8,
// //                           runSpacing: 8,
// //                           children: [
// //                             _buildInfoChip('ID: ${p.userId}', Icons.badge_outlined),
// //                             _buildInfoChip(p.email, Icons.email_outlined),
// //                           ],
// //                         ),
// //                         const SizedBox(height: 16),
// //                       ],
// //                     );
// //                   }
// //                   return Row(
// //                     children: [
// //                       _buildAvatar(p),
// //                       const SizedBox(width: 20),
// //                       Expanded(
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Text(
// //                               p.name,
// //                               style: const TextStyle(
// //                                 fontSize: 26,
// //                                 fontWeight: FontWeight.w700,
// //                                 color: Colors.white,
// //                               ),
// //                             ),
// //                             const SizedBox(height: 4),
// //                             Text(
// //                               p.course,
// //                               style: const TextStyle(
// //                                 fontSize: 14,
// //                                 color: Colors.white,
// //                                 fontWeight: FontWeight.w400,
// //                               ),
// //                             ),
// //                             const SizedBox(height: 12),
// //                             Wrap(
// //                               spacing: 8,
// //                               runSpacing: 8,
// //                               children: [
// //                                 _buildInfoChip('ID: ${p.userId}', Icons.badge_outlined),
// //                                 _buildInfoChip(p.email, Icons.email_outlined),
// //                               ],
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   );
// //                 },
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // ── ID Card ────────────────────────────────────────────────────────────────
// //   Widget _buildIdCard(UserProfile p) {
// //     return Container(
// //       margin: const EdgeInsets.symmetric(horizontal: 8),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(20),
// //         boxShadow: [
// //           BoxShadow(
// //             color: const Color(0xFF7B5FDF).withOpacity(0.18),
// //             blurRadius: 24,
// //             offset: const Offset(0, 8),
// //           ),
// //         ],
// //       ),
// //       child: ClipRRect(
// //         borderRadius: BorderRadius.circular(20),
// //         child: Column(
// //           children: [
// //             // Header
// //             Container(
// //               width: double.infinity,
// //               padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
// //               decoration: const BoxDecoration(
// //                 gradient: LinearGradient(
// //                   begin: Alignment.centerLeft,
// //                   end: Alignment.centerRight,
// //                   colors: [
// //                     Color(0xFF4F7CF6),
// //                     Color(0xFF7B5FDF),
// //                     Color(0xFFD946EF),
// //                   ],
// //                 ),
// //               ),
// //               child: Column(
// //                 children: [
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       Container(
// //                         padding: const EdgeInsets.all(6),
// //                         decoration: BoxDecoration(
// //                           color: Colors.white.withOpacity(0.25),
// //                           shape: BoxShape.circle,
// //                         ),
// //                         child: const Icon(Icons.school, color: Colors.white, size: 16),
// //                       ),
// //                       const SizedBox(width: 8),
// //                       const Text(
// //                         'TECHSTERKER',
// //                         style: TextStyle(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.w800,
// //                           color: Colors.white,
// //                           letterSpacing: 1.5,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   const SizedBox(height: 4),
// //                   Text(
// //                     'Student ID Card',
// //                     style: TextStyle(
// //                       fontSize: 12,
// //                       color: Colors.white.withOpacity(0.85),
// //                       fontWeight: FontWeight.w400,
// //                       letterSpacing: 0.5,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),

// //             // Body
// //             Padding(
// //               padding: const EdgeInsets.all(20),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Row(
// //                     children: [
// //                       Container(
// //                         width: 60,
// //                         height: 60,
// //                         decoration: BoxDecoration(
// //                           shape: BoxShape.circle,
// //                           gradient: const LinearGradient(
// //                             begin: Alignment.topLeft,
// //                             end: Alignment.bottomRight,
// //                             colors: [Color(0xFF7B5FDF), Color(0xFF4F7CF6)],
// //                           ),
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: const Color(0xFF7B5FDF).withOpacity(0.3),
// //                               blurRadius: 10,
// //                               offset: const Offset(0, 4),
// //                             ),
// //                           ],
// //                         ),
// //                         child: Center(
// //                           child: Text(
// //                             p.initials,
// //                             style: const TextStyle(
// //                               fontSize: 26,
// //                               fontWeight: FontWeight.w700,
// //                               color: Colors.white,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                       const SizedBox(width: 16),
// //                       Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             p.name,
// //                             style: TextStyle(
// //                               fontSize: 20,
// //                               fontWeight: FontWeight.w700,
// //                               color: Colors.grey[900],
// //                             ),
// //                           ),
// //                           const SizedBox(height: 4),
// //                           Text(
// //                             p.course,
// //                             style: const TextStyle(
// //                               fontSize: 13,
// //                               fontWeight: FontWeight.w500,
// //                               color: Color(0xFF4F7CF6),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   ),

// //                   const SizedBox(height: 20),
// //                   Divider(color: Colors.grey[100], thickness: 1),
// //                   const SizedBox(height: 16),

// //                   _buildIdCardInfoRow(Icons.email_outlined, 'Email',  p.email),
// //                   const SizedBox(height: 14),
// //                   _buildIdCardInfoRow(Icons.phone_outlined, 'Mobile', p.mobile),
// //                   const SizedBox(height: 14),
// //                   _buildIdCardInfoRow(Icons.badge_outlined, 'User ID', p.userId),

// //                   const SizedBox(height: 20),

// //                   Container(
// //                     width: double.infinity,
// //                     padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
// //                     decoration: BoxDecoration(
// //                       color: Colors.grey[50],
// //                       borderRadius: BorderRadius.circular(12),
// //                       border: Border.all(color: Colors.grey[200]!),
// //                     ),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.center,
// //                       children: [
// //                         Text(
// //                           'ID Card Number',
// //                           style: TextStyle(
// //                             fontSize: 11,
// //                             color: Colors.grey[500],
// //                             fontWeight: FontWeight.w500,
// //                             letterSpacing: 0.5,
// //                           ),
// //                         ),
// //                         const SizedBox(height: 6),
// //                         Text(
// //                           p.userId,
// //                           style: TextStyle(
// //                             fontSize: 16,
// //                             fontWeight: FontWeight.w700,
// //                             color: Colors.grey[900],
// //                             letterSpacing: 1.2,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),

// //             // Bottom strip
// //             Container(
// //               height: 6,
// //               decoration: const BoxDecoration(
// //                 gradient: LinearGradient(
// //                   colors: [Color(0xFF4F7CF6), Color(0xFF7B5FDF), Color(0xFFD946EF)],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildIdCardInfoRow(IconData icon, String label, String value) {
// //     return Row(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         Container(
// //           padding: const EdgeInsets.all(8),
// //           decoration: BoxDecoration(
// //             color: const Color(0xFF4F7CF6).withOpacity(0.08),
// //             borderRadius: BorderRadius.circular(8),
// //           ),
// //           child: Icon(icon, size: 16, color: const Color(0xFF4F7CF6)),
// //         ),
// //         const SizedBox(width: 12),
// //         Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               label,
// //               style: TextStyle(
// //                 fontSize: 11,
// //                 color: Colors.grey[500],
// //                 fontWeight: FontWeight.w500,
// //               ),
// //             ),
// //             const SizedBox(height: 2),
// //             Text(
// //               value,
// //               style: TextStyle(
// //                 fontSize: 14,
// //                 color: Colors.grey[900],
// //                 fontWeight: FontWeight.w600,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ],
// //     );
// //   }

// //   Widget _buildDownloadIdCardButton() {
// //     return Container(
// //       margin: const EdgeInsets.symmetric(horizontal: 8),
// //       width: double.infinity,
// //       child: Material(
// //         color: Colors.transparent,
// //         child: InkWell(
// //           onTap: () {
// //             ScaffoldMessenger.of(context).showSnackBar(
// //               const SnackBar(
// //                 backgroundColor: Colors.green,
// //                 content: Text('ID card downloaded successfully'),
// //               ),
// //             );
// //           },
// //           borderRadius: BorderRadius.circular(14),
// //           child: Ink(
// //             decoration: BoxDecoration(
// //               gradient: const LinearGradient(
// //                 begin: Alignment.centerLeft,
// //                 end: Alignment.centerRight,
// //                 colors: [
// //                   Color(0xFF4F7CF6),
// //                   Color(0xFF7B5FDF),
// //                   Color(0xFFD946EF),
// //                 ],
// //               ),
// //               borderRadius: BorderRadius.circular(14),
// //               boxShadow: [
// //                 BoxShadow(
// //                   color: const Color(0xFF7B5FDF).withOpacity(0.35),
// //                   blurRadius: 16,
// //                   offset: const Offset(0, 6),
// //                 ),
// //               ],
// //             ),
// //             child: const Padding(
// //               padding: EdgeInsets.symmetric(vertical: 16),
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Icon(Icons.download_rounded, color: Colors.white, size: 20),
// //                   SizedBox(width: 10),
// //                   Text(
// //                     'Download ID Card',
// //                     style: TextStyle(
// //                       fontSize: 15,
// //                       fontWeight: FontWeight.w700,
// //                       color: Colors.white,
// //                       letterSpacing: 0.3,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // ── Back button ────────────────────────────────────────────────────────────
// //   Widget _buildBackButton() {
// //     return Container(
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(12),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.grey.withOpacity(0.1),
// //             blurRadius: 8,
// //             offset: const Offset(0, 2),
// //           ),
// //         ],
// //       ),
// //       child: Material(
// //         color: Colors.transparent,
// //         child: InkWell(
// //           onTap: () => Navigator.pop(context),
// //           borderRadius: BorderRadius.circular(12),
// //           child: Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
// //             child: Row(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 Icon(Icons.arrow_back, size: 18, color: Colors.grey[700]),
// //                 const SizedBox(width: 6),
// //                 Text(
// //                   'Back',
// //                   style: TextStyle(
// //                     fontSize: 13,
// //                     fontWeight: FontWeight.w600,
// //                     color: Colors.grey[700],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // ── Avatar ─────────────────────────────────────────────────────────────────
// //   Widget _buildAvatar(UserProfile p) {
// //     return Stack(
// //       children: [
// //         Container(
// //           width: 80,
// //           height: 80,
// //           decoration: BoxDecoration(
// //             shape: BoxShape.circle,
// //             border: Border.all(color: Colors.white.withOpacity(0.3), width: 3),
// //             gradient: LinearGradient(
// //               begin: Alignment.topLeft,
// //               end: Alignment.bottomRight,
// //               colors: [
// //                 Colors.white.withOpacity(0.3),
// //                 Colors.white.withOpacity(0.1),
// //               ],
// //             ),
// //           ),
// //           child: Center(
// //             child: Text(
// //               p.initials,
// //               style: const TextStyle(
// //                 fontSize: 32,
// //                 fontWeight: FontWeight.w700,
// //                 color: Colors.white,
// //               ),
// //             ),
// //           ),
// //         ),
// //         Positioned(
// //           bottom: 0,
// //           right: 0,
// //           child: Container(
// //             padding: const EdgeInsets.all(6),
// //             decoration: BoxDecoration(
// //               color: const Color(0xFF7B5FDF),
// //               shape: BoxShape.circle,
// //               border: Border.all(color: Colors.white, width: 2),
// //             ),
// //             child: const Icon(Icons.camera_alt, size: 14, color: Colors.white),
// //           ),
// //         ),
// //       ],
// //     );
// //   }

// //   // ── Columns ────────────────────────────────────────────────────────────────
// //   Widget _buildLeftColumn(UserProfile p) {
// //     return Column(
// //       children: [
// //         _buildPersonalInfoCard(p),
// //         const SizedBox(height: 16),
// //         _buildCourseInfoCard(p),
// //       ],
// //     );
// //   }

// //   Widget _buildRightColumn() {
// //     return Column(
// //       children: [
// //         const SizedBox(height: 16),
// //         _buildQuickActionsCard(),
// //         const SizedBox(height: 16),
// //         _buildNeedHelpCard(),
// //       ],
// //     );
// //   }

// //   // ── Personal Info Card ─────────────────────────────────────────────────────
// //   Widget _buildPersonalInfoCard(UserProfile p) {
// //     return _buildSectionCard(
// //       icon: Icons.person_outline,
// //       title: 'Personal Information',
// //       action: _buildEditButton(),
// //       child: Column(
// //         children: [
// //           _buildInfoField('Full Name',          p.name),
// //           const SizedBox(height: 12),
// //           _buildInfoField('Email Address',      p.email),
// //           const SizedBox(height: 12),
// //           _buildInfoField('Mobile Number',      p.mobile),
// //           const SizedBox(height: 12),
// //           _buildInfoField('User ID',            p.userId),
// //           const SizedBox(height: 12),
// //           _buildInfoField('Degree',             p.degree),
// //           const SizedBox(height: 12),
// //           _buildInfoField('Department',         p.department),
// //           const SizedBox(height: 12),
// //           _buildInfoField('Year of Graduation', p.yearOfPassedOut.toString()),
// //         ],
// //       ),
// //     );
// //   }

// //   // ── Course Info Card ───────────────────────────────────────────────────────
// //   Widget _buildCourseInfoCard(UserProfile p) {
// //     return _buildSectionCard(
// //       icon: Icons.school_outlined,
// //       title: 'Course Information',
// //       child: Column(
// //         children: [
// //           _buildCourseInfoCardItem(
// //             icon: Icons.book_outlined,
// //             label: 'Enrolled Course',
// //             value: p.course,
// //             color: const Color(0xFF4F7CF6),
// //           ),
// //           const SizedBox(height: 12),
// //           _buildCourseInfoCardItem(
// //             icon: Icons.lock_outline,
// //             label: 'Payment Status',
// //             value: p.paymentStatus,
// //             color: const Color(0xFF10B981),
// //             valueColor: const Color(0xFF10B981),
// //           ),
// //           const SizedBox(height: 12),
// //           _buildCourseInfoCardItem(
// //             icon: Icons.currency_rupee,
// //             label: 'Total Price',
// //             value: p.formattedTotalPrice,
// //             color: const Color(0xFF10B981),
// //           ),
// //           const SizedBox(height: 12),
// //           _buildCourseInfoCardItem(
// //             icon: Icons.receipt_outlined,
// //             label: 'Remaining Payment',
// //             value: p.formattedRemainingPayment,
// //             color: const Color(0xFFF59E0B),
// //           ),
// //           const SizedBox(height: 20),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: [
// //               _buildDateInfo('Account Created', p.formattedCreatedAt),
// //               _buildDateInfo('Last Updated',    p.formattedUpdatedAt, isEnd: true),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // ── Quick Actions Card ─────────────────────────────────────────────────────
// //   Widget _buildQuickActionsCard() {
// //     return _buildSectionCard(
// //       icon: Icons.bolt_outlined,
// //       title: 'Quick Actions',
// //       child: Column(
// //         children: [
// //           _buildActionButton(
// //             icon: Icons.book_outlined,
// //             label: 'Browse Courses',
// //             color: const Color(0xFF4F7CF6),
// //             onTap: () {},
// //           ),
// //           const SizedBox(height: 10),
// //           _buildActionButton(
// //             icon: Icons.dashboard_outlined,
// //             label: 'Go to Dashboard',
// //             color: const Color(0xFF10B981),
// //             onTap: () {},
// //           ),
// //           const SizedBox(height: 10),
// //           _buildActionButton(
// //             icon: Icons.photo_camera_outlined,
// //             label: 'Change Photo',
// //             color: const Color(0xFFEC4899),
// //             onTap: () {},
// //           ),
// //           const SizedBox(height: 10),
// //           _buildActionButton(
// //             icon: Icons.logout,
// //             label: 'Logout',
// //             color: const Color(0xFFEF4444),
// //             onTap: () {
// //               showDialog(
// //                 context: context,
// //                 builder: (ctx) => AlertDialog(
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(16),
// //                   ),
// //                   title: const Text('Confirm Logout'),
// //                   content: const Text('Are you sure you want to logout?'),
// //                   actions: [
// //                     TextButton(
// //                       onPressed: () => Navigator.pop(ctx),
// //                       child: const Text('Cancel'),
// //                     ),
// //                     ElevatedButton(
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: const Color(0xFFEF4444),
// //                       ),
// //                       onPressed: () async {
// //                         Navigator.pop(ctx);
// //                         await SharedPreferencesHelper.clearAll();
// //                         if (!mounted) return;
// //                         Navigator.pushReplacement(
// //                           context,
// //                           MaterialPageRoute(
// //                             builder: (_) => const LoginScreen(),
// //                           ),
// //                         );
// //                       },
// //                       child: const Text(
// //                         'Logout',
// //                         style: TextStyle(color: Colors.white),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               );
// //             },
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // ── Need Help Card ─────────────────────────────────────────────────────────
// //   Widget _buildNeedHelpCard() {
// //     return Container(
// //       margin: const EdgeInsets.symmetric(horizontal: 8),
// //       padding: const EdgeInsets.all(20),
// //       decoration: BoxDecoration(
// //         gradient: const LinearGradient(
// //           begin: Alignment.topLeft,
// //           end: Alignment.bottomRight,
// //           colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
// //         ),
// //         borderRadius: BorderRadius.circular(16),
// //         boxShadow: [
// //           BoxShadow(
// //             color: const Color(0xFF6366F1).withOpacity(0.3),
// //             blurRadius: 15,
// //             offset: const Offset(0, 6),
// //           ),
// //         ],
// //       ),
// //       child: Column(
// //         children: [
// //           Container(
// //             padding: const EdgeInsets.all(10),
// //             decoration: BoxDecoration(
// //               color: Colors.white.withOpacity(0.2),
// //               shape: BoxShape.circle,
// //             ),
// //             child: const Icon(Icons.phone_outlined, color: Colors.white, size: 24),
// //           ),
// //           const SizedBox(height: 12),
// //           const Text(
// //             'Need Help?',
// //             style: TextStyle(
// //               fontSize: 18,
// //               fontWeight: FontWeight.w700,
// //               color: Colors.white,
// //             ),
// //           ),
// //           const SizedBox(height: 6),
// //           const Text(
// //             'Our support team is here 24/7',
// //             textAlign: TextAlign.center,
// //             style: TextStyle(
// //               fontSize: 12,
// //               color: Colors.white,
// //               fontWeight: FontWeight.w400,
// //             ),
// //           ),
// //           const SizedBox(height: 16),
// //           _buildContactRow(Icons.email_outlined, 'support@techsterker.com'),
// //           const SizedBox(height: 10),
// //           _buildContactRow(Icons.phone, '+91 9090909090'),
// //           const SizedBox(height: 16),
// //           SizedBox(
// //             width: double.infinity,
// //             child: ElevatedButton(
// //               onPressed: () async {
// //                 final Uri phoneUri = Uri(scheme: 'tel', path: '+919090909090');
// //                 if (await canLaunchUrl(phoneUri)) {
// //                   await launchUrl(phoneUri);
// //                 } else {
// //                   if (!mounted) return;
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     const SnackBar(content: Text('Could not open dialer')),
// //                   );
// //                 }
// //               },
// //               style: ElevatedButton.styleFrom(
// //                 backgroundColor: Colors.white,
// //                 foregroundColor: const Color(0xFF6366F1),
// //                 padding: const EdgeInsets.symmetric(vertical: 12),
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(10),
// //                 ),
// //                 elevation: 0,
// //               ),
// //               child: const Text(
// //                 'Contact Support',
// //                 style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // ── Shared helper widgets ──────────────────────────────────────────────────
// //   Widget _buildContactRow(IconData icon, String text) {
// //     return Row(
// //       children: [
// //         Icon(icon, color: Colors.white, size: 14),
// //         const SizedBox(width: 8),
// //         Expanded(
// //           child: Text(
// //             text,
// //             style: const TextStyle(
// //               fontSize: 11,
// //               color: Colors.white,
// //               fontWeight: FontWeight.w500,
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }

// //   Widget _buildDateInfo(String label, String date, {bool isEnd = false}) {
// //     return Expanded(
// //       child: Column(
// //         crossAxisAlignment:
// //             isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             label,
// //             style: TextStyle(
// //               fontSize: 11,
// //               color: Colors.grey[600],
// //               fontWeight: FontWeight.w500,
// //             ),
// //           ),
// //           const SizedBox(height: 4),
// //           Text(
// //             date,
// //             style: TextStyle(
// //               fontSize: 14,
// //               color: Colors.grey[900],
// //               fontWeight: FontWeight.w600,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildInfoChip(String text, IconData icon) {
// //     return Container(
// //       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
// //       decoration: BoxDecoration(
// //         color: Colors.white.withOpacity(0.2),
// //         borderRadius: BorderRadius.circular(8),
// //         border: Border.all(color: Colors.white.withOpacity(0.3)),
// //       ),
// //       child: Row(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           Icon(icon, size: 14, color: Colors.white),
// //           const SizedBox(width: 6),
// //           Text(
// //             text,
// //             style: const TextStyle(
// //               fontSize: 12,
// //               color: Colors.white,
// //               fontWeight: FontWeight.w500,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildSectionCard({
// //     required IconData icon,
// //     required String title,
// //     required Widget child,
// //     Widget? action,
// //   }) {
// //     return Container(
// //       margin: const EdgeInsets.symmetric(horizontal: 8),
// //       padding: const EdgeInsets.all(20),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(16),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.grey.withOpacity(0.08),
// //             blurRadius: 15,
// //             offset: const Offset(0, 3),
// //           ),
// //         ],
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Row(
// //             children: [
// //               Container(
// //                 padding: const EdgeInsets.all(8),
// //                 decoration: BoxDecoration(
// //                   color: const Color(0xFF4F7CF6).withOpacity(0.1),
// //                   borderRadius: BorderRadius.circular(10),
// //                 ),
// //                 child: Icon(icon, color: const Color(0xFF4F7CF6), size: 20),
// //               ),
// //               const SizedBox(width: 10),
// //               Expanded(
// //                 child: Text(
// //                   title,
// //                   style: TextStyle(
// //                     fontSize: 16,
// //                     fontWeight: FontWeight.w700,
// //                     color: Colors.grey[900],
// //                   ),
// //                 ),
// //               ),
// //               if (action != null) action,
// //             ],
// //           ),
// //           const SizedBox(height: 20),
// //           child,
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildEditButton() {
// //     return GestureDetector(
// //       onTap: () {
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(builder: (_) => EditProfileScreen()),
// //         );
// //       },
// //       child: Container(
// //         padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
// //         decoration: BoxDecoration(
// //           gradient: const LinearGradient(
// //             colors: [Color(0xFF4F7CF6), Color(0xFF7B5FDF)],
// //           ),
// //           borderRadius: BorderRadius.circular(8),
// //           boxShadow: [
// //             BoxShadow(
// //               color: const Color(0xFF4F7CF6).withOpacity(0.3),
// //               blurRadius: 6,
// //               offset: const Offset(0, 3),
// //             ),
// //           ],
// //         ),
// //         child: const Text(
// //           'Edit Profile',
// //           style: TextStyle(
// //             fontSize: 12,
// //             fontWeight: FontWeight.w600,
// //             color: Colors.white,
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildInfoField(String label, String value) {
// //     return Container(
// //       width: double.infinity,
// //       padding: const EdgeInsets.all(16),
// //       decoration: BoxDecoration(
// //         color: Colors.grey[50],
// //         borderRadius: BorderRadius.circular(12),
// //         border: Border.all(color: Colors.grey[200]!, width: 1),
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             label,
// //             style: TextStyle(
// //               fontSize: 12,
// //               color: Colors.grey[500],
// //               fontWeight: FontWeight.w500,
// //               letterSpacing: 0.3,
// //             ),
// //           ),
// //           const SizedBox(height: 6),
// //           Text(
// //             value,
// //             style: TextStyle(
// //               fontSize: 15,
// //               color: Colors.grey[900],
// //               fontWeight: FontWeight.w600,
// //               letterSpacing: 0.2,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildCourseInfoCardItem({
// //     required IconData icon,
// //     required String label,
// //     required String value,
// //     required Color color,
// //     Color? valueColor,
// //   }) {
// //     return Container(
// //       width: double.infinity,
// //       padding: const EdgeInsets.all(16),
// //       decoration: BoxDecoration(
// //         color: color.withOpacity(0.08),
// //         borderRadius: BorderRadius.circular(12),
// //         border: Border.all(color: color.withOpacity(0.2), width: 1),
// //       ),
// //       child: Row(
// //         children: [
// //           Container(
// //             padding: const EdgeInsets.all(10),
// //             decoration: BoxDecoration(
// //               color: color.withOpacity(0.15),
// //               borderRadius: BorderRadius.circular(10),
// //             ),
// //             child: Icon(icon, color: color, size: 20),
// //           ),
// //           const SizedBox(width: 14),
// //           Expanded(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Text(
// //                   label,
// //                   style: TextStyle(
// //                     fontSize: 12,
// //                     color: Colors.grey[600],
// //                     fontWeight: FontWeight.w500,
// //                     letterSpacing: 0.3,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 4),
// //                 Text(
// //                   value,
// //                   style: TextStyle(
// //                     fontSize: 15,
// //                     color: valueColor ?? Colors.grey[900],
// //                     fontWeight: FontWeight.w700,
// //                     letterSpacing: 0.2,
// //                   ),
// //                   maxLines: 2,
// //                   overflow: TextOverflow.ellipsis,
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildActionButton({
// //     required IconData icon,
// //     required String label,
// //     required Color color,
// //     required VoidCallback onTap,
// //   }) {
// //     return Material(
// //       color: Colors.transparent,
// //       child: InkWell(
// //         onTap: onTap,
// //         borderRadius: BorderRadius.circular(10),
// //         child: Container(
// //           padding: const EdgeInsets.all(14),
// //           decoration: BoxDecoration(
// //             color: color.withOpacity(0.08),
// //             borderRadius: BorderRadius.circular(10),
// //             border: Border.all(color: color.withOpacity(0.2)),
// //           ),
// //           child: Row(
// //             children: [
// //               Container(
// //                 padding: const EdgeInsets.all(6),
// //                 decoration: BoxDecoration(
// //                   color: color.withOpacity(0.15),
// //                   borderRadius: BorderRadius.circular(6),
// //                 ),
// //                 child: Icon(icon, color: color, size: 18),
// //               ),
// //               const SizedBox(width: 10),
// //               Expanded(
// //                 child: Text(
// //                   label,
// //                   style: TextStyle(
// //                     fontSize: 13,
// //                     color: Colors.grey[900],
// //                     fontWeight: FontWeight.w600,
// //                   ),
// //                 ),
// //               ),
// //               Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey[400]),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }























import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:techstecker_app/helper/shared_preference.dart';
import 'package:techstecker_app/views/auth/login_screen.dart';
import 'package:techstecker_app/views/profile/edit_profile_screen.dart';
import 'package:url_launcher/url_launcher.dart';

// ── SharedPreferencesHelper ───────────────────────────────────────────────────

// ── UserProfile Model ─────────────────────────────────────────────────────────
class UserProfile {
  final String id;
  final String name;
  final String email;
  final String mobile;
  final String userId;
  final String course;
  final String degree;
  final String department;
  final int yearOfPassedOut;
  final String paymentStatus;
  final double totalPrice;
  final double remainingPayment;
  final String createdAt;
  final String updatedAt;
  final String profileImage;

  const UserProfile({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.userId,
    required this.course,
    required this.degree,
    required this.department,
    required this.yearOfPassedOut,
    required this.paymentStatus,
    required this.totalPrice,
    required this.remainingPayment,
    required this.createdAt,
    required this.updatedAt,
    required this.profileImage,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id:               json['_id']              ?? '',
      name:             json['name']              ?? '',
      email:            json['email']             ?? '',
      mobile:           json['mobile']            ?? json['phoneNumber'] ?? '',
      userId:           json['userId']            ?? '',
      course:           json['course']            ?? '',
      degree:           json['degree']            ?? '',
      department:       json['department']        ?? '',
      yearOfPassedOut:  (json['yearOfPassedOut']  ?? 0) is int
                          ? json['yearOfPassedOut']
                          : int.tryParse('${json['yearOfPassedOut']}') ?? 0,
      paymentStatus:    json['paymentStatus']     ?? '',
      totalPrice:       (json['totalPrice']       ?? 0).toDouble(),
      remainingPayment: (json['remainingPayment'] ?? 0).toDouble(),
      createdAt:        json['createdAt']         ?? '',
      updatedAt:        json['updatedAt']         ?? '',
      profileImage:     json['profileImage']      ?? '',
    );
  }

  String get formattedTotalPrice =>
      '₹${totalPrice.toStringAsFixed(2).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}';

  String get formattedRemainingPayment =>
      remainingPayment == 0 ? '₹0' : '₹${remainingPayment.toStringAsFixed(2)}';

  String get formattedCreatedAt => _formatDate(createdAt);
  String get formattedUpdatedAt => _formatDate(updatedAt);

  static String _formatDate(String iso) {
    try {
      final dt = DateTime.parse(iso);
      const months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
      return '${months[dt.month - 1]} ${dt.day}, ${dt.year}';
    } catch (_) {
      return iso;
    }
  }

  String get initials {
    final parts = name.trim().split(' ');
    if (parts.isEmpty) return 'U';
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
  }
}

// ── ProfileScreen ─────────────────────────────────────────────────────────────
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserProfile? _profile;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _fetchProfile());
  }

  Future<void> _fetchProfile() async {
    setState(() {
      _isLoading    = true;
      _errorMessage = null;
      _profile      = null;
    });

    try {
      final mongoId = await SharedPreferencesHelper.getMongoId();
      final token   = await SharedPreferencesHelper.getToken();

      debugPrint('>>> mongoId: $mongoId');
      debugPrint('>>> token:   $token');

      if (mongoId == null || mongoId.trim().isEmpty) {
        setState(() {
          _errorMessage = 'Session expired. Please log in again.';
          _isLoading    = false;
        });
        return;
      }

      final uri = Uri.parse(
        'https://api.techsterker.com/api/myprofile/${mongoId.trim()}',
      );

      final response = await http
          .get(
            uri,
            headers: {
              'Content-Type': 'application/json',
              if (token != null && token.isNotEmpty)
                'Authorization': 'Bearer $token',
            },
          )
          .timeout(const Duration(seconds: 15));

      debugPrint('>>> status: ${response.statusCode}');
      debugPrint('>>> body:   ${response.body}');

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        if (data['success'] == true && data['profile'] != null) {
          setState(() {
            _profile   = UserProfile.fromJson(data['profile']);
            _isLoading = false;
          });
        } else {
          setState(() {
            _errorMessage = data['message'] ?? 'Failed to fetch profile.';
            _isLoading    = false;
          });
        }
      } else {
        setState(() {
          _errorMessage = 'Server error (${response.statusCode}). Please try again.';
          _isLoading    = false;
        });
      }
    } catch (e) {
      debugPrint('>>> error: $e');
      setState(() {
        _errorMessage = 'Network error. Please check your connection.';
        _isLoading    = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SafeArea(
        child: _isLoading
            ? _buildLoadingState()
            : _errorMessage != null
                ? _buildErrorState()
                : _buildContent(),
      ),
    );
  }

  // ── Loading ────────────────────────────────────────────────────────────────
  Widget _buildLoadingState() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(color: Color(0xFF7B5FDF)),
          SizedBox(height: 16),
          Text(
            'Loading profile…',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  // ── Error ──────────────────────────────────────────────────────────────────
  Widget _buildErrorState() {
    return Column(
      children: [
        // Back button at top
        Padding(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.topRight,
            child: _buildBackButton(),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.error_outline, size: 64, color: Colors.red[400]),
                  const SizedBox(height: 16),
                  const Text(
                    'Oops! Something went wrong',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _errorMessage ?? 'Unknown error',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: 160,
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: _fetchProfile,   // direct method reference — always tappable
                      icon: const Icon(Icons.refresh, size: 18),
                      label: const Text(
                        'Retry',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF7B5FDF),
                        foregroundColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ── Main Content ───────────────────────────────────────────────────────────
  Widget _buildContent() {
    final p = _profile!;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'My Profile',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[900],
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Manage your personal information',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                _buildBackButton(),
              ],
            ),
          ),

          const SizedBox(height: 16),
          _buildHeroCard(p),
          const SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Your ID Card',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.grey[900],
                letterSpacing: -0.3,
              ),
            ),
          ),

          const SizedBox(height: 12),
          _buildIdCard(p),
          const SizedBox(height: 12),
          _buildDownloadIdCardButton(),
          const SizedBox(height: 24),

          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 900;
              if (isWide) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 7, child: _buildLeftColumn(p)),
                    const SizedBox(width: 16),
                    Expanded(flex: 3, child: _buildRightColumn()),
                  ],
                );
              }
              return Column(
                children: [
                  _buildLeftColumn(p),
                  const SizedBox(height: 16),
                  _buildRightColumn(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeroCard(UserProfile p) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF4F7CF6),
            Color(0xFF7B5FDF),
            Color(0xFFD946EF),
            Color(0xFFEC4899),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF7B5FDF).withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned(
              top: -40,
              right: -40,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isCompact = constraints.maxWidth < 800;
                  if (isCompact) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            _buildAvatar(p),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(p.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white)),
                                  const SizedBox(height: 4),
                                  Text(p.course, style: const TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            _buildInfoChip('ID: ${p.userId}', Icons.badge_outlined),
                            _buildInfoChip(p.email, Icons.email_outlined),
                          ],
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  }
                  return Row(
                    children: [
                      _buildAvatar(p),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(p.name, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white)),
                            const SizedBox(height: 4),
                            Text(p.course, style: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400)),
                            const SizedBox(height: 12),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: [
                                _buildInfoChip('ID: ${p.userId}', Icons.badge_outlined),
                                _buildInfoChip(p.email, Icons.email_outlined),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIdCard(UserProfile p) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF7B5FDF).withOpacity(0.18),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFF4F7CF6), Color(0xFF7B5FDF), Color(0xFFD946EF)],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.25), shape: BoxShape.circle),
                        child: const Icon(Icons.school, color: Colors.white, size: 16),
                      ),
                      const SizedBox(width: 8),
                      const Text('TECHSTERKER', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white, letterSpacing: 1.5)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text('Student ID Card', style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.85), fontWeight: FontWeight.w400, letterSpacing: 0.5)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF7B5FDF), Color(0xFF4F7CF6)],
                          ),
                          boxShadow: [BoxShadow(color: const Color(0xFF7B5FDF).withOpacity(0.3), blurRadius: 10, offset: const Offset(0, 4))],
                        ),
                        child: Center(child: Text(p.initials, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white))),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(p.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.grey[900])),
                          const SizedBox(height: 4),
                          Text(p.course, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF4F7CF6))),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Divider(color: Colors.grey[100], thickness: 1),
                  const SizedBox(height: 16),
                  _buildIdCardInfoRow(Icons.email_outlined, 'Email',   p.email),
                  const SizedBox(height: 14),
                  _buildIdCardInfoRow(Icons.phone_outlined, 'Mobile',  p.mobile),
                  const SizedBox(height: 14),
                  _buildIdCardInfoRow(Icons.badge_outlined, 'User ID', p.userId),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('ID Card Number', style: TextStyle(fontSize: 11, color: Colors.grey[500], fontWeight: FontWeight.w500, letterSpacing: 0.5)),
                        const SizedBox(height: 6),
                        Text(p.userId, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey[900], letterSpacing: 1.2)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 6,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFF4F7CF6), Color(0xFF7B5FDF), Color(0xFFD946EF)]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIdCardInfoRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(color: const Color(0xFF4F7CF6).withOpacity(0.08), borderRadius: BorderRadius.circular(8)),
          child: Icon(icon, size: 16, color: const Color(0xFF4F7CF6)),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyle(fontSize: 11, color: Colors.grey[500], fontWeight: FontWeight.w500)),
            const SizedBox(height: 2),
            Text(value, style: TextStyle(fontSize: 14, color: Colors.grey[900], fontWeight: FontWeight.w600)),
          ],
        ),
      ],
    );
  }

  Widget _buildDownloadIdCardButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(backgroundColor: Colors.green, content: Text('ID card downloaded successfully')),
          );
        },
        icon: const Icon(Icons.download_rounded, color: Colors.white, size: 20),
        label: const Text('Download ID Card', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white, letterSpacing: 0.3)),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: const Color(0xFF7B5FDF),
          foregroundColor: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 8, offset: const Offset(0, 2))],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Navigator.pop(context),
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_back, size: 18, color: Colors.grey[700]),
                const SizedBox(width: 6),
                Text('Back', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey[700])),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar(UserProfile p) {
    return Stack(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white.withOpacity(0.3), width: 3),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white.withOpacity(0.3), Colors.white.withOpacity(0.1)],
            ),
          ),
          child: Center(
            child: Text(p.initials, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.white)),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(color: const Color(0xFF7B5FDF), shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 2)),
            child: const Icon(Icons.camera_alt, size: 14, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildLeftColumn(UserProfile p) {
    return Column(
      children: [
        _buildPersonalInfoCard(p),
        const SizedBox(height: 16),
        _buildCourseInfoCard(p),
      ],
    );
  }

  Widget _buildRightColumn() {
    return Column(
      children: [
        const SizedBox(height: 16),
        _buildQuickActionsCard(),
        const SizedBox(height: 16),
        _buildNeedHelpCard(),
      ],
    );
  }

  Widget _buildPersonalInfoCard(UserProfile p) {
    return _buildSectionCard(
      icon: Icons.person_outline,
      title: 'Personal Information',
      action: _buildEditButton(),
      child: Column(
        children: [
          _buildInfoField('Full Name',          p.name),
          const SizedBox(height: 12),
          _buildInfoField('Email Address',      p.email),
          const SizedBox(height: 12),
          _buildInfoField('Mobile Number',      p.mobile),
          const SizedBox(height: 12),
          _buildInfoField('User ID',            p.userId),
          const SizedBox(height: 12),
          _buildInfoField('Degree',             p.degree),
          const SizedBox(height: 12),
          _buildInfoField('Department',         p.department),
          const SizedBox(height: 12),
          _buildInfoField('Year of Graduation', p.yearOfPassedOut.toString()),
        ],
      ),
    );
  }

  Widget _buildCourseInfoCard(UserProfile p) {
    return _buildSectionCard(
      icon: Icons.school_outlined,
      title: 'Course Information',
      child: Column(
        children: [
          _buildCourseInfoCardItem(icon: Icons.book_outlined,     label: 'Enrolled Course',    value: p.course,                       color: const Color(0xFF4F7CF6)),
          const SizedBox(height: 12),
          _buildCourseInfoCardItem(icon: Icons.lock_outline,      label: 'Payment Status',     value: p.paymentStatus,                color: const Color(0xFF10B981), valueColor: const Color(0xFF10B981)),
          const SizedBox(height: 12),
          _buildCourseInfoCardItem(icon: Icons.currency_rupee,    label: 'Total Price',        value: p.formattedTotalPrice,          color: const Color(0xFF10B981)),
          const SizedBox(height: 12),
          _buildCourseInfoCardItem(icon: Icons.receipt_outlined,  label: 'Remaining Payment',  value: p.formattedRemainingPayment,    color: const Color(0xFFF59E0B)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildDateInfo('Account Created', p.formattedCreatedAt),
              _buildDateInfo('Last Updated',    p.formattedUpdatedAt, isEnd: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionsCard() {
    return _buildSectionCard(
      icon: Icons.bolt_outlined,
      title: 'Quick Actions',
      child: Column(
        children: [
          _buildActionButton(icon: Icons.book_outlined,         label: 'Browse Courses',    color: const Color(0xFF4F7CF6), onTap: () {}),
          const SizedBox(height: 10),
          _buildActionButton(icon: Icons.dashboard_outlined,   label: 'Go to Dashboard',   color: const Color(0xFF10B981), onTap: () {}),
          const SizedBox(height: 10),
          _buildActionButton(icon: Icons.photo_camera_outlined, label: 'Change Photo',      color: const Color(0xFFEC4899), onTap: () {}),
          const SizedBox(height: 10),
          _buildActionButton(
            icon: Icons.logout,
            label: 'Logout',
            color: const Color(0xFFEF4444),
            onTap: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  title: const Text('Confirm Logout'),
                  content: const Text('Are you sure you want to logout?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(ctx),
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFEF4444)),
                      onPressed: () async {
                        Navigator.pop(ctx);
                        await SharedPreferencesHelper.clearAll();
                        if (!mounted) return;
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                      },
                      child: const Text('Logout', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNeedHelpCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)]),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: const Color(0xFF6366F1).withOpacity(0.3), blurRadius: 15, offset: const Offset(0, 6))],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
            child: const Icon(Icons.phone_outlined, color: Colors.white, size: 24),
          ),
          const SizedBox(height: 12),
          const Text('Need Help?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white)),
          const SizedBox(height: 6),
          const Text('Our support team is here 24/7', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400)),
          const SizedBox(height: 16),
          _buildContactRow(Icons.email_outlined, 'support@techsterker.com'),
          const SizedBox(height: 10),
          _buildContactRow(Icons.phone, '+91 9090909090'),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                final Uri phoneUri = Uri(scheme: 'tel', path: '+919090909090');
                if (await canLaunchUrl(phoneUri)) {
                  await launchUrl(phoneUri);
                } else {
                  if (!mounted) return;
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Could not open dialer')));
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF6366F1),
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 0,
              ),
              child: const Text('Contact Support', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 14),
        const SizedBox(width: 8),
        Expanded(child: Text(text, style: const TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.w500))),
      ],
    );
  }

  Widget _buildDateInfo(String label, String date, {bool isEnd = false}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 11, color: Colors.grey[600], fontWeight: FontWeight.w500)),
          const SizedBox(height: 4),
          Text(date, style: TextStyle(fontSize: 14, color: Colors.grey[900], fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _buildInfoChip(String text, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: Colors.white),
          const SizedBox(width: 6),
          Text(text, style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildSectionCard({required IconData icon, required String title, required Widget child, Widget? action}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.08), blurRadius: 15, offset: const Offset(0, 3))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: const Color(0xFF4F7CF6).withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                child: Icon(icon, color: const Color(0xFF4F7CF6), size: 20),
              ),
              const SizedBox(width: 10),
              Expanded(child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey[900]))),
              if (action != null) action,
            ],
          ),
          const SizedBox(height: 20),
          child,
        ],
      ),
    );
  }

  Widget _buildEditButton() {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => EditProfileScreen())),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Color(0xFF4F7CF6), Color(0xFF7B5FDF)]),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: const Color(0xFF4F7CF6).withOpacity(0.3), blurRadius: 6, offset: const Offset(0, 3))],
        ),
        child: const Text('Edit Profile', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)),
      ),
    );
  }

  Widget _buildInfoField(String label, String value) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[500], fontWeight: FontWeight.w500, letterSpacing: 0.3)),
          const SizedBox(height: 6),
          Text(value, style: TextStyle(fontSize: 15, color: Colors.grey[900], fontWeight: FontWeight.w600, letterSpacing: 0.2)),
        ],
      ),
    );
  }

  Widget _buildCourseInfoCardItem({required IconData icon, required String label, required String value, required Color color, Color? valueColor}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.2), width: 1),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: color.withOpacity(0.15), borderRadius: BorderRadius.circular(10)),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[600], fontWeight: FontWeight.w500, letterSpacing: 0.3)),
                const SizedBox(height: 4),
                Text(value, style: TextStyle(fontSize: 15, color: valueColor ?? Colors.grey[900], fontWeight: FontWeight.w700, letterSpacing: 0.2), maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({required IconData icon, required String label, required Color color, required VoidCallback onTap}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: color.withOpacity(0.08),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: color.withOpacity(0.2)),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(color: color.withOpacity(0.15), borderRadius: BorderRadius.circular(6)),
                child: Icon(icon, color: color, size: 18),
              ),
              const SizedBox(width: 10),
              Expanded(child: Text(label, style: TextStyle(fontSize: 13, color: Colors.grey[900], fontWeight: FontWeight.w600))),
              Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey[400]),
            ],
          ),
        ),
      ),
    );
  }
}