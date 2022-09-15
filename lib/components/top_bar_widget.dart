import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({Key? key}) : super(key: key);

  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).tertiaryColor
          ],
          stops: [0, 1],
          begin: AlignmentDirectional(-1, -0.87),
          end: AlignmentDirectional(1, 0.87),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'K r e a t i v e K o r n e r',
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Montserrat',
                      color: FlutterFlowTheme.of(context).white,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Get In Touch',
                    options: FFButtonOptions(
                      width: 130,
                      height: 30,
                      color: Color(0x00FFFFFF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).white,
                                fontSize: 12,
                              ),
                      elevation: 0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                  child: FaIcon(
                    FontAwesomeIcons.bell,
                    color: FlutterFlowTheme.of(context).white,
                    size: 18,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                  child: FaIcon(
                    FontAwesomeIcons.facebookMessenger,
                    color: FlutterFlowTheme.of(context).white,
                    size: 18,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await signOut();

                    context.pushNamedAuth('SignInPage', mounted);
                  },
                  text: 'Logout',
                  options: FFButtonOptions(
                    width: 130,
                    height: double.infinity,
                    color: Color(0xFF000030),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        ),
                    elevation: 0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
