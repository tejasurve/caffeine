// import 'package:flutter/material.dart';
// import 'package:music_app/config/Colors.dart';
// import 'package:sleek_circular_slider/sleek_circular_slider.dart';

// class CircularSliderWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SleekCircularSlider(
//           initialValue: 50, // Initial value
//           max: 100, // Maximum value
//           appearance: CircularSliderAppearance(
//             customColors: CustomSliderColors(
//               progressBarColors: [Colors.blue], // Customize progress bar colors
//               trackColor: Colors.grey, // Customize track color
//               shadowColor: primaryColor, // Customize shadow color
//               shadowMaxOpacity: 0.2, // Set shadow maximum opacity
//             ),
//             customWidths: CustomSliderWidths(
//               progressBarWidth: 10, // Set progress bar width
//               shadowWidth: 12, // Set shadow width
//             ),
//             size: 250, // Set the slider's size
//             startAngle: 190, // Set the starting angle
//             angleRange: 160, // Set the angle range
//             infoProperties: InfoProperties(
//               // Customize label style
//               mainLabelStyle: TextStyle(fontSize: 24, color: Colors.blue),
//               modifier: (double value) {
//                 // Display value as a percentage
//                 return '${value.toStringAsFixed(0)}%';
//               },
//             ),
//             spinnerMode: false, // Disable spinner mode
//             animationEnabled: true, // Enable animation
//           ),
//           onChange: (double value) {
//             // Handle value change here
//           },
//         ),
//       ),
//     );
//   }
// }
