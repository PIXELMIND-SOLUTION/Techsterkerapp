// import 'package:flutter/material.dart';

// class PaymentScreen extends StatelessWidget {
//   const PaymentScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF0F2F8),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(onPressed: (){
//           Navigator.of(context).pop();
//         }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
//         title: const Text(
//           'Payment Details',
//           style: TextStyle(
//             color: Color(0xFF2D1B69),
//             fontWeight: FontWeight.w700,
//             fontSize: 18,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: Column(
//           children: const [
//             PaymentOverviewCard(),
//             SizedBox(height: 24),
//             InvoiceCard(),
//             SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ─── Payment Overview Card ───────────────────────────────────────────────────

// class PaymentOverviewCard extends StatelessWidget {
//   const PaymentOverviewCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(28),
//         gradient: const LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [Color(0xFF8A2BE2), Color(0xFFBB1FA0), Color(0xFFE91E8C)],
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFFBB1FA0).withOpacity(0.45),
//             blurRadius: 32,
//             offset: const Offset(0, 14),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(26),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Header
//             Row(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.white.withOpacity(0.18),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: const Icon(
//                     Icons.credit_card_rounded,
//                     color: Colors.white,
//                     size: 20,
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 const Text(
//                   'Payment Overview',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w700,
//                     letterSpacing: 0.3,
//                   ),
//                 ),
//                 // const Spacer(),
//                 // _StatusChip(label: 'Completed'),
//               ],
//             ),
//             const SizedBox(height: 28),

//             // Fee rows
//             _FeeRow(
//               label: 'Total Course Fee',
//               value: '₹70,798.82',
//               valueColor: Colors.white,
//             ),
//             const SizedBox(height: 14),
//             _FeeRow(
//               label: 'Amount Paid',
//               value: '₹70,798.82',
//               valueColor: const Color(0xFF7EFFD4),
//             ),
//             const SizedBox(height: 14),
//             _FeeRow(
//               label: 'Pending Amount',
//               value: '₹0',
//               valueColor: const Color(0xFFFFD966),
//             ),

//             const SizedBox(height: 24),
//             _GlassDivider(),
//             const SizedBox(height: 20),

//             // Progress bar
//             const _PaymentProgressBar(paidPercent: 1.0),

//             const SizedBox(height: 24),

//             // View Invoices button
//             _ViewInvoicesButton(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _StatusChip extends StatelessWidget {
//   final String label;
//   const _StatusChip({required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.18),
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             width: 7,
//             height: 7,
//             decoration: const BoxDecoration(
//               color: Color(0xFF7EFFD4),
//               shape: BoxShape.circle,
//             ),
//           ),
//           const SizedBox(width: 6),
//           Text(
//             label,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 12,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _FeeRow extends StatelessWidget {
//   final String label;
//   final String value;
//   final Color valueColor;

//   const _FeeRow({
//     required this.label,
//     required this.value,
//     required this.valueColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             color: Colors.white.withOpacity(0.8),
//             fontSize: 14.5,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         Text(
//           value,
//           style: TextStyle(
//             color: valueColor,
//             fontSize: 15,
//             fontWeight: FontWeight.w700,
//             letterSpacing: 0.2,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class _GlassDivider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 1,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Colors.transparent,
//             Colors.white.withOpacity(0.35),
//             Colors.transparent,
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _PaymentProgressBar extends StatelessWidget {
//   final double paidPercent;
//   const _PaymentProgressBar({required this.paidPercent});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 const Icon(
//                   Icons.check_circle_rounded,
//                   color: Color(0xFF7EFFD4),
//                   size: 16,
//                 ),
//                 const SizedBox(width: 5),
//                 Text(
//                   '${(paidPercent * 100).toInt()}% Paid',
//                   style: const TextStyle(
//                     color: Color(0xFF7EFFD4),
//                     fontWeight: FontWeight.w600,
//                     fontSize: 13,
//                   ),
//                 ),
//               ],
//             ),
//             Text(
//               '${((1 - paidPercent) * 100).toInt()}% Pending',
//               style: TextStyle(
//                 color: Colors.white.withOpacity(0.6),
//                 fontSize: 13,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 10),
//         ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: Stack(
//             children: [
//               // Background track
//               Container(
//                 height: 10,
//                 width: double.infinity,
//                 color: Colors.white.withOpacity(0.2),
//               ),
//               // Fill
//               FractionallySizedBox(
//                 widthFactor: paidPercent,
//                 child: Container(
//                   height: 10,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     gradient: const LinearGradient(
//                       colors: [Color(0xFF7EFFD4), Color(0xFF00E5A0)],
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0xFF00E5A0).withOpacity(0.6),
//                         blurRadius: 8,
//                         offset: const Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class _ViewInvoicesButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.15),
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(color: Colors.white.withOpacity(0.25), width: 1),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Icon(
//               Icons.receipt_long_rounded,
//               color: Colors.white,
//               size: 20,
//             ),
//             const SizedBox(width: 10),
//             const Text(
//               'View Invoices (1)',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 15,
//                 letterSpacing: 0.3,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ─── Invoice Card ─────────────────────────────────────────────────────────────

// class InvoiceCard extends StatelessWidget {
//   const InvoiceCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(28),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF8A2BE2).withOpacity(0.08),
//             blurRadius: 30,
//             offset: const Offset(0, 10),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Header
//           Padding(
//             padding: const EdgeInsets.fromLTRB(22, 20, 22, 0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         gradient: const LinearGradient(
//                           colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
//                         ),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: const Icon(
//                         Icons.receipt_rounded,
//                         color: Colors.white,
//                         size: 18,
//                       ),
//                     ),
//                     const SizedBox(width: 12),
//                     const Text(
//                       'Your Invoices',
//                       style: TextStyle(
//                         color: Color(0xFF2D1B69),
//                         fontSize: 18,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 12,
//                     vertical: 6,
//                   ),
//                   decoration: BoxDecoration(
//                     gradient: const LinearGradient(
//                       colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
//                     ),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: const Text(
//                     '1 Invoice',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(height: 20),

//           // Gradient divider
//           Container(
//             height: 2,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
//               ),
//             ),
//           ),

//           // Invoice details
//           Padding(
//             padding: const EdgeInsets.all(22),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Invoice ID + amount + status
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           ShaderMask(
//                             shaderCallback: (bounds) => const LinearGradient(
//                               colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
//                             ).createShader(bounds),
//                             child: const Text(
//                               '#INVOICEID-99301',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800,
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             'Digital Marketing with Ali',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: 13,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         const Text(
//                           '₹70,798.82',
//                           style: TextStyle(
//                             color: Color(0xFF2D1B69),
//                             fontWeight: FontWeight.w800,
//                             fontSize: 16,
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 10,
//                             vertical: 4,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFE8FFF4),
//                             borderRadius: BorderRadius.circular(20),
//                             border: Border.all(
//                               color: const Color(0xFF00C47A).withOpacity(0.3),
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: const [
//                               Icon(
//                                 Icons.check_circle_rounded,
//                                 color: Color(0xFF00C47A),
//                                 size: 13,
//                               ),
//                               SizedBox(width: 4),
//                               Text(
//                                 'Paid',
//                                 style: TextStyle(
//                                   color: Color(0xFF00C47A),
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 20),

//                 // Dates
//                 Row(
//                   children: [
//                     Expanded(
//                       child: _DateBlock(
//                         label: 'Issue Date',
//                         date: '15 Nov 2025',
//                         icon: Icons.calendar_today_rounded,
//                       ),
//                     ),
//                     const SizedBox(width: 12),
//                     Expanded(
//                       child: _DateBlock(
//                         label: 'Due Date',
//                         date: '15 Dec 2025',
//                         icon: Icons.event_rounded,
//                       ),
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 20),

//                 // Items section
//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFFF8F5FF),
//                     borderRadius: BorderRadius.circular(16),
//                     border: Border.all(
//                       color: const Color(0xFF8A2BE2).withOpacity(0.1),
//                     ),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Items',
//                         style: TextStyle(
//                           color: Colors.grey[500],
//                           fontSize: 12,
//                           fontWeight: FontWeight.w600,
//                           letterSpacing: 0.8,
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       _LineItem(
//                         label: 'Digital Marketing with AI  ×1',
//                         value: '₹59,999',
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Divider(
//                           color: const Color(0xFF8A2BE2).withOpacity(0.12),
//                           height: 1,
//                         ),
//                       ),
//                       _LineItem(
//                         label: 'Subtotal',
//                         value: '₹59,999',
//                         bold: false,
//                       ),
//                       const SizedBox(height: 6),
//                       _LineItem(
//                         label: 'GST (18%)',
//                         value: '₹10,799.82',
//                         bold: false,
//                         valueColor: const Color(0xFFE91E8C),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const SizedBox(height: 20),

//                 // Action buttons
//                 Row(
//                   children: [
//                     Expanded(
//                       flex: 3,
//                       child: _GradientButton(
//                         label: 'Download PDF',
//                         icon: Icons.download_rounded,
//                         onTap: () {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               backgroundColor: Colors.green,
//                               content: Text('Pdf Downloaded successfully'),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     const SizedBox(width: 12),
//                     Expanded(
//                       child: _OutlineButton(
//                         label: 'View',
//                         icon: Icons.visibility_rounded,
//                         onTap: () {},
//                       ),
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 18),

//                 // Issued by
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 14,
//                     vertical: 10,
//                   ),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFFF5F5F5),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 34,
//                         height: 34,
//                         decoration: BoxDecoration(
//                           gradient: const LinearGradient(
//                             colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: const Icon(
//                           Icons.business_rounded,
//                           color: Colors.white,
//                           size: 18,
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Issued by: Techsterker',
//                             style: TextStyle(
//                               color: Color(0xFF2D1B69),
//                               fontWeight: FontWeight.w600,
//                               fontSize: 13,
//                             ),
//                           ),
//                           const SizedBox(height: 2),
//                           Text(
//                             'Contact: +91 9000239871',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: 12,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _DateBlock extends StatelessWidget {
//   final String label;
//   final String date;
//   final IconData icon;

//   const _DateBlock({
//     required this.label,
//     required this.date,
//     required this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
//       decoration: BoxDecoration(
//         color: const Color(0xFFF8F5FF),
//         borderRadius: BorderRadius.circular(14),
//         border: Border.all(color: const Color(0xFF8A2BE2).withOpacity(0.1)),
//       ),
//       child: Row(
//         children: [
//           Icon(icon, color: const Color(0xFF8A2BE2), size: 16),
//           const SizedBox(width: 8),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 label,
//                 style: TextStyle(color: Colors.grey[500], fontSize: 11),
//               ),
//               const SizedBox(height: 2),
//               Text(
//                 date,
//                 style: const TextStyle(
//                   color: Color(0xFF2D1B69),
//                   fontWeight: FontWeight.w600,
//                   fontSize: 13,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _LineItem extends StatelessWidget {
//   final String label;
//   final String value;
//   final bool bold;
//   final Color? valueColor;

//   const _LineItem({
//     required this.label,
//     required this.value,
//     this.bold = true,
//     this.valueColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             color: bold ? const Color(0xFF2D1B69) : Colors.grey[600],
//             fontWeight: bold ? FontWeight.w600 : FontWeight.w400,
//             fontSize: 14,
//           ),
//         ),
//         Text(
//           value,
//           style: TextStyle(
//             color:
//                 valueColor ??
//                 (bold ? const Color(0xFF2D1B69) : Colors.grey[700]),
//             fontWeight: bold ? FontWeight.w700 : FontWeight.w500,
//             fontSize: 14,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class _GradientButton extends StatelessWidget {
//   final String label;
//   final IconData icon;
//   final VoidCallback onTap;

//   const _GradientButton({
//     required this.label,
//     required this.icon,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 15),
//         decoration: BoxDecoration(
//           gradient: const LinearGradient(
//             colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
//           ),
//           borderRadius: BorderRadius.circular(14),
//           boxShadow: [
//             BoxShadow(
//               color: const Color(0xFFBB1FA0).withOpacity(0.35),
//               blurRadius: 16,
//               offset: const Offset(0, 6),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, color: Colors.white, size: 18),
//             const SizedBox(width: 8),
//             Text(
//               label,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 14,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _OutlineButton extends StatelessWidget {
//   final String label;
//   final IconData icon;
//   final VoidCallback onTap;

//   const _OutlineButton({
//     required this.label,
//     required this.icon,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 15),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(14),
//           border: Border.all(
//             color: const Color(0xFF8A2BE2).withOpacity(0.4),
//             width: 1.5,
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, color: const Color(0xFF8A2BE2), size: 18),
//             const SizedBox(width: 6),
//             Text(
//               label,
//               style: const TextStyle(
//                 color: Color(0xFF8A2BE2),
//                 fontWeight: FontWeight.w700,
//                 fontSize: 14,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techstecker_app/helper/shared_preference.dart';

// ─── Invoice Model ────────────────────────────────────────────────────────────

class InvoiceModel {
  final String invoiceId;
  final String invoiceNumber;
  final String studentName;
  final String studentEmail;
  final String studentMobile;
  final String course;
  final String issueDate;
  final String dueDate;
  final List<InvoiceItem> items;
  final double subtotal;
  final double totalAmount;
  final String status;
  final String fullPdfUrl;
  final String companyName;
  final String companyContact;
  final String companyEmail;

  InvoiceModel({
    required this.invoiceId,
    required this.invoiceNumber,
    required this.studentName,
    required this.studentEmail,
    required this.studentMobile,
    required this.course,
    required this.issueDate,
    required this.dueDate,
    required this.items,
    required this.subtotal,
    required this.totalAmount,
    required this.status,
    required this.fullPdfUrl,
    required this.companyName,
    required this.companyContact,
    required this.companyEmail,
  });

  factory InvoiceModel.fromJson(Map<String, dynamic> json) {
    return InvoiceModel(
      invoiceId: json['invoiceId'] ?? '',
      invoiceNumber: json['invoiceNumber'] ?? '',
      studentName: json['student']['name'] ?? '',
      studentEmail: json['student']['email'] ?? '',
      studentMobile: json['student']['mobile'] ?? '',
      course: json['student']['course'] ?? '',
      issueDate: json['issueDate'] ?? '',
      dueDate: json['dueDate'] ?? '',
      items: (json['items'] as List<dynamic>)
          .map((e) => InvoiceItem.fromJson(e))
          .toList(),
      subtotal: (json['subtotal'] ?? 0).toDouble(),
      totalAmount: (json['totalAmount'] ?? 0).toDouble(),
      status: json['status'] ?? '',
      fullPdfUrl: json['fullPdfUrl'] ?? '',
      companyName: json['companyInfo']['name'] ?? '',
      companyContact: json['companyInfo']['contact'] ?? '',
      companyEmail: json['companyInfo']['email'] ?? '',
    );
  }
}

class InvoiceItem {
  final String description;
  final int quantity;
  final double unitPrice;
  final double amount;

  InvoiceItem({
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.amount,
  });

  factory InvoiceItem.fromJson(Map<String, dynamic> json) {
    return InvoiceItem(
      description: json['description'] ?? '',
      quantity: json['quantity'] ?? 1,
      unitPrice: (json['unitPrice'] ?? 0).toDouble(),
      amount: (json['amount'] ?? 0).toDouble(),
    );
  }
}

// ─── Payment Screen ───────────────────────────────────────────────────────────

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<InvoiceModel> _invoices = [];
  bool _isLoading = true;
  String? _errorMessage;

  // Derived totals
  double get _totalCourseFee =>
      _invoices.fold(0, (sum, inv) => sum + inv.totalAmount);
  double get _amountPaid => _invoices
      .where((inv) => inv.status == 'paid')
      .fold(0, (sum, inv) => sum + inv.totalAmount);
  double get _pendingAmount => _totalCourseFee - _amountPaid;
  double get _paidPercent =>
      _totalCourseFee > 0 ? _amountPaid / _totalCourseFee : 0;

  @override
  void initState() {
    super.initState();
    _fetchInvoices();
  }

  Future<void> _fetchInvoices() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final mongoId = await SharedPreferencesHelper.getMongoId();

      if (mongoId == null || mongoId.isEmpty) {
        setState(() {
          _errorMessage = 'User session not found. Please log in again.';
          _isLoading = false;
        });
        return;
      }

      final uri = Uri.parse(
        'https://api.techsterker.com/api/userinvoice/$mongoId',
      );

      final token = await SharedPreferencesHelper.getToken();
      final response = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json',
          if (token != null) 'Authorization': 'Bearer $token',
        },
      );

      print('Response status code for payment overview ${response.statusCode}');
      print(
        'Response bodyyyyyyyyyyyyyyyy for payment overview ${response.body}',
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> body = jsonDecode(response.body);
        if (body['success'] == true) {
          final List<dynamic> data = body['data'];
          setState(() {
            _invoices = data.map((e) => InvoiceModel.fromJson(e)).toList();
            _isLoading = false;
          });
        } else {
          setState(() {
            _errorMessage = body['message'] ?? 'Failed to fetch invoices.';
            _isLoading = false;
          });
        }
      } else {
        setState(() {
          _errorMessage = 'Server error (${response.statusCode}). Try again.';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Network error. Please check your connection.';
        _isLoading = false;
      });
    }
  }

  String _formatAmount(double amount) {
    // Format as Indian currency style
    final formatted = amount.toStringAsFixed(2);
    final parts = formatted.split('.');
    final intPart = parts[0];
    final decPart = parts[1];

    // Indian number formatting
    String result = '';
    int count = 0;
    for (int i = intPart.length - 1; i >= 0; i--) {
      if (count == 3 && i == intPart.length - 4) {
        result = ',${intPart[i]}$result';
      } else if (count > 3 && (count - 3) % 2 == 0) {
        result = ',${intPart[i]}$result';
      } else {
        result = '${intPart[i]}$result';
      }
      count++;
    }
    return '₹$result.$decPart';
  }

  String _formatDate(String isoDate) {
    try {
      final dt = DateTime.parse(isoDate);
      const months = [
        'Jan',
        'Feb',
        'Mar',
        'Apr',
        'May',
        'Jun',
        'Jul',
        'Aug',
        'Sep',
        'Oct',
        'Nov',
        'Dec',
      ];
      return '${dt.day.toString().padLeft(2, '0')} ${months[dt.month - 1]} ${dt.year}';
    } catch (_) {
      return isoDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text(
          'Payment Details',
          style: TextStyle(
            color: Color(0xFF2D1B69),
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(color: Color(0xFF8A2BE2)),
            )
          : _errorMessage != null
          ? _buildErrorState()
          : RefreshIndicator(
              color: const Color(0xFF8A2BE2),
              onRefresh: _fetchInvoices,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    _buildPaymentOverviewCard(),
                    const SizedBox(height: 24),
                    _buildInvoiceListCard(),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFEEEE),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.error_outline_rounded,
                color: Color(0xFFE91E8C),
                size: 48,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _errorMessage!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF2D1B69),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: _fetchInvoices,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Text(
                  'Retry',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ─── Payment Overview Card ─────────────────────────────────────────────────

  Widget _buildPaymentOverviewCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF8A2BE2), Color(0xFFBB1FA0), Color(0xFFE91E8C)],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFBB1FA0).withOpacity(0.45),
            blurRadius: 32,
            offset: const Offset(0, 14),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.18),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.credit_card_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Payment Overview',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),

            _FeeRow(
              label: 'Total Course Fee',
              value: _formatAmount(_totalCourseFee),
              valueColor: Colors.white,
            ),
            const SizedBox(height: 14),
            _FeeRow(
              label: 'Amount Paid',
              value: _formatAmount(_amountPaid),
              valueColor: const Color(0xFF7EFFD4),
            ),
            const SizedBox(height: 14),
            _FeeRow(
              label: 'Pending Amount',
              value: _pendingAmount <= 0 ? '₹0' : _formatAmount(_pendingAmount),
              valueColor: const Color(0xFFFFD966),
            ),

            const SizedBox(height: 24),
            _GlassDivider(),
            const SizedBox(height: 20),

            _PaymentProgressBar(paidPercent: _paidPercent),

            const SizedBox(height: 24),

            // View Invoices button
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.25),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.receipt_long_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'View Invoices (${_invoices.length})',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ─── Invoice List Card ─────────────────────────────────────────────────────

  Widget _buildInvoiceListCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF8A2BE2).withOpacity(0.08),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 20, 22, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.receipt_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Your Invoices',
                      style: TextStyle(
                        color: Color(0xFF2D1B69),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${_invoices.length} Invoice${_invoices.length != 1 ? 's' : ''}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Container(
            height: 2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
              ),
            ),
          ),

          if (_invoices.isEmpty)
            const Padding(
              padding: EdgeInsets.all(32),
              child: Center(
                child: Text(
                  'No invoices found.',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _invoices.length,
              separatorBuilder: (_, __) => Container(
                height: 1,
                margin: const EdgeInsets.symmetric(horizontal: 22),
                color: const Color(0xFF8A2BE2).withOpacity(0.08),
              ),
              itemBuilder: (context, index) =>
                  _buildSingleInvoice(_invoices[index]),
            ),
        ],
      ),
    );
  }

  Widget _buildSingleInvoice(InvoiceModel invoice) {
    final bool isPaid = invoice.status == 'paid';

    return Padding(
      padding: const EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Invoice ID + amount + status
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
                      ).createShader(bounds),
                      child: Text(
                        '#${invoice.invoiceNumber}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      invoice.course,
                      style: TextStyle(color: Colors.grey[500], fontSize: 13),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _formatAmount(invoice.totalAmount),
                    style: const TextStyle(
                      color: Color(0xFF2D1B69),
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: isPaid
                          ? const Color(0xFFE8FFF4)
                          : const Color(0xFFFFF8E1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isPaid
                            ? const Color(0xFF00C47A).withOpacity(0.3)
                            : const Color(0xFFFFB300).withOpacity(0.3),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isPaid
                              ? Icons.check_circle_rounded
                              : Icons.schedule_rounded,
                          color: isPaid
                              ? const Color(0xFF00C47A)
                              : const Color(0xFFFFB300),
                          size: 13,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          isPaid ? 'Paid' : 'Pending',
                          style: TextStyle(
                            color: isPaid
                                ? const Color(0xFF00C47A)
                                : const Color(0xFFFFB300),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Dates
          Row(
            children: [
              Expanded(
                child: _DateBlock(
                  label: 'Issue Date',
                  date: _formatDate(invoice.issueDate),
                  icon: Icons.calendar_today_rounded,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _DateBlock(
                  label: 'Due Date',
                  date: _formatDate(invoice.dueDate),
                  icon: Icons.event_rounded,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Items section
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF8F5FF),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: const Color(0xFF8A2BE2).withOpacity(0.1),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ITEMS',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(height: 10),

                ...invoice.items.map(
                  (item) => Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            '${item.description}  ×${item.quantity}',
                            style: const TextStyle(
                              color: Color(0xFF2D1B69),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _formatAmount(item.amount),
                          style: const TextStyle(
                            color: Color(0xFF2D1B69),
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ...invoice.items.map(
                //   (item) => Padding(
                //     padding: const EdgeInsets.only(bottom: 10),
                //     child: _LineItem(
                //       label: '${item.description}  ×${item.quantity}',
                //       value: _formatAmount(item.amount),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    color: const Color(0xFF8A2BE2).withOpacity(0.12),
                    height: 1,
                  ),
                ),
                _LineItem(
                  label: 'Subtotal',
                  value: _formatAmount(invoice.subtotal),
                  bold: false,
                ),
                const SizedBox(height: 6),
                _LineItem(
                  label: 'GST (18%)',
                  value: _formatAmount(invoice.totalAmount - invoice.subtotal),
                  bold: false,
                  valueColor: const Color(0xFFE91E8C),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Action buttons
          Row(
            children: [
              Expanded(
                flex: 3,
                child: _GradientButton(
                  label: 'Download PDF',
                  icon: Icons.download_rounded,
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.green,
                        content: Text('PDF Downloaded successfully'),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _OutlineButton(
                  label: 'View',
                  icon: Icons.visibility_rounded,
                  onTap: () {},
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          // Issued by
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.business_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Issued by: ${invoice.companyName}',
                      style: const TextStyle(
                        color: Color(0xFF2D1B69),
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Contact: ${invoice.companyContact}',
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Reusable Widgets ─────────────────────────────────────────────────────────

class _FeeRow extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;

  const _FeeRow({
    required this.label,
    required this.value,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 14.5,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: valueColor,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2,
          ),
        ),
      ],
    );
  }
}

class _GlassDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Colors.white.withOpacity(0.35),
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}

class _PaymentProgressBar extends StatelessWidget {
  final double paidPercent;
  const _PaymentProgressBar({required this.paidPercent});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.check_circle_rounded,
                  color: Color(0xFF7EFFD4),
                  size: 16,
                ),
                const SizedBox(width: 5),
                Text(
                  '${(paidPercent * 100).toInt()}% Paid',
                  style: const TextStyle(
                    color: Color(0xFF7EFFD4),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Text(
              '${((1 - paidPercent) * 100).toInt()}% Pending',
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Container(
                height: 10,
                width: double.infinity,
                color: Colors.white.withOpacity(0.2),
              ),
              FractionallySizedBox(
                widthFactor: paidPercent,
                child: Container(
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF7EFFD4), Color(0xFF00E5A0)],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF00E5A0).withOpacity(0.6),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DateBlock extends StatelessWidget {
  final String label;
  final String date;
  final IconData icon;

  const _DateBlock({
    required this.label,
    required this.date,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F5FF),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF8A2BE2).withOpacity(0.1)),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF8A2BE2), size: 16),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(color: Colors.grey[500], fontSize: 11),
              ),
              const SizedBox(height: 2),
              Text(
                date,
                style: const TextStyle(
                  color: Color(0xFF2D1B69),
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LineItem extends StatelessWidget {
  final String label;
  final String value;
  final bool bold;
  final Color? valueColor;

  const _LineItem({
    required this.label,
    required this.value,
    this.bold = true,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: bold ? const Color(0xFF2D1B69) : Colors.grey[600],
            fontWeight: bold ? FontWeight.w600 : FontWeight.w400,
            fontSize: 14,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color:
                valueColor ??
                (bold ? const Color(0xFF2D1B69) : Colors.grey[700]),
            fontWeight: bold ? FontWeight.w700 : FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class _GradientButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _GradientButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF8A2BE2), Color(0xFFE91E8C)],
          ),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFBB1FA0).withOpacity(0.35),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 18),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _OutlineButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: const Color(0xFF8A2BE2).withOpacity(0.4),
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: const Color(0xFF8A2BE2), size: 18),
            const SizedBox(width: 6),
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFF8A2BE2),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
