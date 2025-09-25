import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/desktop_dashboard.dart';
import 'package:responsive_dashboard/widgets/mobile_dashboard.dart';
import 'package:responsive_dashboard/widgets/tablet_dashboard.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}
class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.of(context).size.width<SizeConfig.tablet? CustomDrawer(): null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                onPressed: (){
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
              backgroundColor: Color(0xfffafafa),
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileDashboard(),
        tabletLayout: (context) => TabletDashboard(),
        desktopLayout: (context) => DesktopDashboard(),
      ),
    );
  }
}
