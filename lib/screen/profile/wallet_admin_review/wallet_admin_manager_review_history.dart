import 'package:flutter/material.dart';
import 'package:gohomy/screen/profile/wallet_admin_review/wallet_admin_review.dart';

class WalletAdminManagerReviewHistory extends StatelessWidget {
  WalletAdminManagerReviewHistory({super.key});

  final Map<String, Widget> _viewMap = {
    'NẠP': const WalletDepositHistory(),
    'RÚT': const WalletWithdrawHistory(),
  };

  @override
  Widget build(BuildContext context) {
    final tabBar = TabBar(
      labelColor: const Color(0xFF009247),
      labelStyle: const TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
      ),
      unselectedLabelColor: const Color(0xFFFB3E15),
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
      ),
      tabs: [
        for (final e in _viewMap.entries) Tab(text: e.key),
      ],
    );
    final topContainerMaps = <Map<String, dynamic>>[
      {
        'title': 'Tổng tiền nạp',
        'subtitle': '56.520.235.000',
        'color': const Color(0xFF009247),
        'type': GradientContaineType.vnd,
        'onTap': () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GraphDeposit(),
            )),
      },
      {
        'title': 'Tổng tiền rút',
        'subtitle': '26.580.023.000',
        'color': const Color(0xFFF73131),
        'type': GradientContaineType.vnd,
        'onTap': () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GraphWithdraw(),
            )),
      },
      {
        'title': 'Tổng số Xu vàng',
        'subtitle': '29.940.212.000',
        'color': const Color(0xFFFDBB0C),
        'type': GradientContaineType.goldCoin,
        'onTap': () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GraphGoldCoin(),
            )),
      },
      {
        'title': 'Tổng số Xu bạc',
        'subtitle': '54.000.000',
        'color': const Color(0xFF8E8E8E),
        'type': GradientContaineType.silverCoin,
        'onTap': () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GraphAmountSilverCoin(),
            )),
      },
    ];

    return DefaultTabController(
      length: _viewMap.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Quản lý ví Renren'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_today_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: tabBar.preferredSize * 4.75,
            child: Column(
              children: [
                // DataBar.
                Container(
                  color: Colors.white,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 7.5),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.5,
                    ),
                    itemCount: topContainerMaps.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 7.5),
                        child: GradientContainerWithShadow(
                          title: topContainerMaps[index]['title'],
                          subtitle: topContainerMaps[index]['subtitle'],
                          color: topContainerMaps[index]['color'],
                          type: topContainerMaps[index]['type'],
                          onTap: topContainerMaps[index]['onTap'],
                        ),
                      );
                    },
                  ),
                ),
                // TabBar.
                Material(color: Colors.white, child: tabBar),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            for (final e in _viewMap.entries) e.value,
          ],
        ),
      ),
    );

    //   NestedScrollView(
    //     clipBehavior: Clip.none,
    //     physics: const NeverScrollableScrollPhysics(),
    //     floatHeaderSlivers: true,
    //     headerSliverBuilder: (context, innerBoxIsScrolled) => [
    //       // AppBar.
    //       SliverAppBar(
    //         pinned: true,
    //         floating: true,
    //         snap: true,
    //         // automaticallyImplyLeading: false,
    //         centerTitle: true,
    //         elevation: 0,
    //         scrolledUnderElevation: 2,
    //         // shadowColor: AppColors.shadowAccent,
    //         // shape: const RoundedRectangleBorder(
    //         //   borderRadius: AppThemes.borderRadiusAppBar,
    //         // ),
    //         title: const Text('Quản lý ví Renren'),
    //         actions: [
    //           IconButton(
    //             onPressed: () {},
    //             icon: const Icon(Icons.calendar_today_outlined),
    //           ),
    //           IconButton(
    //             onPressed: () {},
    //             icon: const Icon(Icons.search),
    //           ),
    //         ],
    //         bottom: PreferredSize(
    //           preferredSize: tabBar.preferredSize * 4.75,
    //           child: Column(
    //             children: [
    //               // DataBar.
    //               Container(
    //                 color: Colors.white,
    //                 child: GridView.builder(
    //                   physics: const NeverScrollableScrollPhysics(),
    //                   padding: const EdgeInsets.symmetric(vertical: 7.5),
    //                   shrinkWrap: true,
    //                   gridDelegate:
    //                       const SliverGridDelegateWithFixedCrossAxisCount(
    //                     crossAxisCount: 2,
    //                     childAspectRatio: 2.5,
    //                   ),
    //                   itemCount: topContainerMaps.length,
    //                   itemBuilder: (context, index) {
    //                     return Padding(
    //                       padding: const EdgeInsets.symmetric(
    //                           horizontal: 20, vertical: 7.5),
    //                       child: GradientContainerWithShadow(
    //                           title: topContainerMaps[index]['title'],
    //                           subtitle: topContainerMaps[index]['subtitle'],
    //                           color: topContainerMaps[index]['color']),
    //                     );
    //                   },
    //                 ),
    //               ),
    //               // TabBar.
    //               Material(color: Colors.white, child: tabBar),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //     body: TabBarView(
    //       children: [
    //         for (final e in _viewMap.entries) e.value,
    //       ],
    //     ),
    //   ),
    // );
  }
}
