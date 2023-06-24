// import 'package:flutter/material.dart';
// import 'package:peecos/app/service_locator.dart';
// import 'package:peecos/constans/routes.dart';
// import 'package:peecos/services/navigation_service.dart';
// import 'package:peecos/utils/mypage_icons.dart';
//
// enum AppBottomNavigationBarPage {
//   home,
//   ticket,
//   distribution,
//   myPage,
// }
//
// class AppBottomNavigationBar extends StatelessWidget {
//   AppBottomNavigationBar({Key? key, required this.selectedPage}) : super(key: key);
//
//   final AppBottomNavigationBarPage selectedPage;
//   final NavigationService _navigationService = getIt<NavigationService>();
//
//   static const pages = [
//     AppBottomNavigationBarPage.home,
//     AppBottomNavigationBarPage.ticket,
//     AppBottomNavigationBarPage.distribution,
//     AppBottomNavigationBarPage.myPage,
//   ];
//
//   int _getIndexForPage() {
//     return pages.indexOf(selectedPage);
//   }
//
//   void _onItemTapped(int index) {
//     final page = pages[index];
//     switch (page) {
//       case AppBottomNavigationBarPage.home:
//         _navigationService.navigateAndRemoveTo(homePageRoute);
//         break;
//       case AppBottomNavigationBarPage.ticket:
//         _navigationService.navigateAndRemoveTo(myCouponRoute);
//         break;
//       case AppBottomNavigationBarPage.distribution:
//         _navigationService.navigateAndRemoveTo(distributionRoute);
//         break;
//       case AppBottomNavigationBarPage.myPage:
//         _navigationService.navigateAndRemoveTo(myPageRoute);
//         break;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       items: const [
//         BottomNavigationBarItem(
//           backgroundColor: Colors.blueAccent,
//           icon: Icon(FooterIcons.home),
//           label: 'ホーム',
//         ),
//         BottomNavigationBarItem(
//           backgroundColor: Colors.blueAccent,
//           icon: Icon(FooterIcons.mycoupon),
//           label: '   チケット',
//         ),
//         BottomNavigationBarItem(
//           backgroundColor: Colors.blueAccent,
//           icon: Icon(FooterIcons.distribute),
//           label: 'くばる',
//         ),
//         BottomNavigationBarItem(
//           backgroundColor: Colors.blueAccent,
//           icon: Icon(FooterIcons.mypage),
//           label: 'マイページ',
//         ),
//       ],
//       currentIndex: _getIndexForPage(),
//       selectedItemColor: Colors.indigoAccent[100],
//       onTap: _onItemTapped,
//       backgroundColor: Colors.indigoAccent[400],
//       unselectedItemColor: Colors.white,
//     );
//   }
// }
