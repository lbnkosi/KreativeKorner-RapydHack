import '../backend/backend.dart';
import '../components/nav_bar_widget.dart';
import '../components/quick_access_widget.dart';
import '../components/top_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SharesListWidget extends StatefulWidget {
  const SharesListWidget({Key? key}) : super(key: key);

  @override
  _SharesListWidgetState createState() => _SharesListWidgetState();
}

class _SharesListWidgetState extends State<SharesListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'SharesList',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TopBarWidget(),
                NavBarWidget(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 1,
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Text(
                          'Need a place to stay? Book with us',
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).appBg,
                                    fontSize: 26,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Color(0x19000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Text(
                          'Book an apartment through KreativeKorner and recieve points',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Text(
                          'If you\'re a content creator, sometimes you need to recieve money when you collaborate with different brands to advertise their products. Dealing with different brands from different countries can make it difficult to recieve payments especially on time. VanCollections helps solve this problem by allowing you to create virtual account numbers which you can send to brands. They can then use these virtual account numbers to pay you.',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          QuickAccessWidget(),
                          Expanded(
                            child: Container(
                              width: 100,
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 0, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 1,
                                        decoration: BoxDecoration(
                                          color: Color(0x19000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: Text(
                                        'Browse through apartments',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child:
                                          StreamBuilder<List<MySharesRecord>>(
                                        stream: queryMySharesRecord(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitPulse(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          List<MySharesRecord>
                                              listViewMySharesRecordList =
                                              snapshot.data!;
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewMySharesRecordList
                                                    .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewMySharesRecord =
                                                  listViewMySharesRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 20),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 250,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .white,
                                                      image: DecorationImage(
                                                        fit: BoxFit.fitWidth,
                                                        image: Image.network(
                                                          listViewMySharesRecord
                                                              .imagePath!,
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Container(
                                                      width: 100,
                                                      height: 150,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xB3090F13),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 2),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          16,
                                                                          16,
                                                                          0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      listViewMySharesRecord
                                                                          .shareName!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                24,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .chevron_right_rounded,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 24,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          4,
                                                                          16,
                                                                          0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      listViewMySharesRecord
                                                                          .name!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).white,
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            4,
                                                                            16,
                                                                            16),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        context
                                                                            .pushNamed(
                                                                          'SharesDetailsPage',
                                                                          queryParams:
                                                                              {
                                                                            'id':
                                                                                serializeParam(listViewMySharesRecord.shareId, ParamType.String),
                                                                          }.withoutNulls,
                                                                        );
                                                                      },
                                                                      text:
                                                                          'Buy this share',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_rounded,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            15,
                                                                      ),
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            180,
                                                                        height:
                                                                            40,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: FlutterFlowTheme.of(context).white,
                                                                              fontSize: 12,
                                                                            ),
                                                                        elevation:
                                                                            0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                4),
                                                                            child:
                                                                                Text(
                                                                              listViewMySharesRecord.shareCount!,
                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                    fontFamily: 'Montserrat',
                                                                                    color: FlutterFlowTheme.of(context).white,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            listViewMySharesRecord.shareAmount!,
                                                                            textAlign:
                                                                                TextAlign.end,
                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  color: FlutterFlowTheme.of(context).white,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
