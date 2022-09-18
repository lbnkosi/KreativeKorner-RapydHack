import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/nav_bar_widget.dart';
import '../components/top_bar_widget.dart';
import '../flutter_flow/flutter_flow_charts.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWalletsWidget extends StatefulWidget {
  const MyWalletsWidget({Key? key}) : super(key: key);

  @override
  _MyWalletsWidgetState createState() => _MyWalletsWidgetState();
}

class _MyWalletsWidgetState extends State<MyWalletsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CreatorRecord>>(
      future: queryCreatorRecordOnce(
        queryBuilder: (creatorRecord) =>
            creatorRecord.where('email', isEqualTo: currentUserEmail),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitPulse(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<CreatorRecord> myWalletsCreatorRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final myWalletsCreatorRecord = myWalletsCreatorRecordList.isNotEmpty
            ? myWalletsCreatorRecordList.first
            : null;
        return Title(
            title: 'MyWallets',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).white,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TopBarWidget(),
                      NavBarWidget(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StreamBuilder<List<MyWalletsRecord>>(
                              stream: queryMyWalletsRecord(
                                parent: myWalletsCreatorRecord!.reference,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SpinKitPulse(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                }
                                List<MyWalletsRecord> chartMyWalletsRecordList =
                                    snapshot.data!;
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 300,
                                  child: FlutterFlowLineChart(
                                    data: [
                                      FFLineChartData(
                                        xData: chartMyWalletsRecordList
                                            .map((d) => d.walletAmount)
                                            .toList(),
                                        yData: chartMyWalletsRecordList
                                            .map((d) => d.holder)
                                            .toList(),
                                        settings: LineChartBarData(
                                          color: Color(0xFFD354E3),
                                          barWidth: 5,
                                          isCurved: true,
                                        ),
                                      )
                                    ],
                                    chartStylingInfo: ChartStylingInfo(
                                      backgroundColor: Colors.white,
                                      showGrid: true,
                                      showBorder: false,
                                    ),
                                    axisBounds: AxisBounds(),
                                    xAxisLabelInfo: AxisLabelInfo(),
                                    yAxisLabelInfo: AxisLabelInfo(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
