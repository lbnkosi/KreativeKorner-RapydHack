import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../components/nav_bar_widget.dart';
import '../components/top_bar_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CashAdvancePageWidget extends StatefulWidget {
  const CashAdvancePageWidget({Key? key}) : super(key: key);

  @override
  _CashAdvancePageWidgetState createState() => _CashAdvancePageWidgetState();
}

class _CashAdvancePageWidgetState extends State<CashAdvancePageWidget> {
  ApiCallResponse? apiResultsu3;
  String? beneficairyCurrencyValue;
  String? beneficiaryCountryValue;
  String? beneficiaryIdValue;
  String? cardValue;
  String? planIdValue;
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
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<CreatorRecord> cashAdvancePageCreatorRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final cashAdvancePageCreatorRecord =
            cashAdvancePageCreatorRecordList.isNotEmpty
                ? cashAdvancePageCreatorRecordList.first
                : null;
        return Title(
            title: 'CashAdvancePage',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).white,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TopBarWidget(),
                        NavBarWidget(),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Text(
                            'Apply for a cash advance',
                            style:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 26,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Apply for a cash advance to recieve money for an invoice. Please complete the form below.',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 480,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0x40FF5963),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40, 40, 40, 40),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Cash Advance Details',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 15,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 2, 0),
                                              child: StreamBuilder<
                                                  List<PlansRecord>>(
                                                stream: queryPlansRecord(
                                                  queryBuilder: (plansRecord) =>
                                                      plansRecord
                                                          .where('plan_type',
                                                              isEqualTo:
                                                                  'cash_advance')
                                                          .where(
                                                              'plan_currency',
                                                              isEqualTo: 'USD'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<PlansRecord>
                                                      planIdPlansRecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown(
                                                    initialOption:
                                                        planIdValue ??= 'null',
                                                    options:
                                                        planIdPlansRecordList
                                                            .map((e) =>
                                                                e.planId!)
                                                            .toList()
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            planIdValue = val),
                                                    width: 300,
                                                    height: 38,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .black,
                                                            ),
                                                    hintText:
                                                        'Select a payment plan',
                                                    elevation: 2,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .black,
                                                    borderWidth: 0,
                                                    borderRadius: 5,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    hidesUnderline: true,
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: Text(
                                                'If you don\'t have any payout accounts listed\nplease add one by clicking here',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                      fontSize: 10,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 2, 0),
                                              child: FutureBuilder<
                                                  List<MycardsRecord>>(
                                                future: queryMycardsRecordOnce(
                                                  parent:
                                                      cashAdvancePageCreatorRecord!
                                                          .reference,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<MycardsRecord>
                                                      cardMycardsRecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown(
                                                    initialOption: cardValue ??=
                                                        'null',
                                                    options:
                                                        cardMycardsRecordList
                                                            .map((e) =>
                                                                e.cardId!)
                                                            .toList()
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            cardValue = val),
                                                    width: 300,
                                                    height: 38,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .black,
                                                            ),
                                                    hintText:
                                                        'Please select a card',
                                                    elevation: 2,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .black,
                                                    borderWidth: 0,
                                                    borderRadius: 5,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    hidesUnderline: true,
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: Text(
                                                'If you don\'t have any payout accounts listed\nplease add one by clicking here',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                      fontSize: 10,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 2, 0),
                                              child: StreamBuilder<
                                                  List<BeneficiariesRecord>>(
                                                stream:
                                                    queryBeneficiariesRecord(
                                                  parent:
                                                      cashAdvancePageCreatorRecord!
                                                          .reference,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<BeneficiariesRecord>
                                                      beneficiaryIdBeneficiariesRecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown(
                                                    initialOption:
                                                        beneficiaryIdValue ??=
                                                            'null',
                                                    options:
                                                        beneficiaryIdBeneficiariesRecordList
                                                            .map((e) => e.id!)
                                                            .toList()
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            beneficiaryIdValue =
                                                                val),
                                                    width: 300,
                                                    height: 38,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .black,
                                                            ),
                                                    hintText:
                                                        'Please select a beneficiary',
                                                    elevation: 2,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .black,
                                                    borderWidth: 0,
                                                    borderRadius: 5,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    hidesUnderline: true,
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 2, 0),
                                              child: StreamBuilder<
                                                  List<BeneficiariesRecord>>(
                                                stream:
                                                    queryBeneficiariesRecord(
                                                  parent:
                                                      cashAdvancePageCreatorRecord!
                                                          .reference,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<BeneficiariesRecord>
                                                      beneficiaryCountryBeneficiariesRecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown(
                                                    initialOption:
                                                        beneficiaryCountryValue ??=
                                                            'null',
                                                    options:
                                                        beneficiaryCountryBeneficiariesRecordList
                                                            .map((e) =>
                                                                e.country!)
                                                            .toList()
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            beneficiaryCountryValue =
                                                                val),
                                                    width: 300,
                                                    height: 38,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .black,
                                                            ),
                                                    hintText:
                                                        'Please select a country',
                                                    elevation: 2,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .black,
                                                    borderWidth: 0,
                                                    borderRadius: 5,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    hidesUnderline: true,
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 2, 0),
                                              child: StreamBuilder<
                                                  List<BeneficiariesRecord>>(
                                                stream:
                                                    queryBeneficiariesRecord(
                                                  parent:
                                                      cashAdvancePageCreatorRecord!
                                                          .reference,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<BeneficiariesRecord>
                                                      beneficairyCurrencyBeneficiariesRecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown(
                                                    initialOption:
                                                        beneficairyCurrencyValue ??=
                                                            'null',
                                                    options:
                                                        beneficairyCurrencyBeneficiariesRecordList
                                                            .map((e) =>
                                                                e.currency!)
                                                            .toList()
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            beneficairyCurrencyValue =
                                                                val),
                                                    width: 300,
                                                    height: 38,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .black,
                                                            ),
                                                    hintText:
                                                        'Please select a currency',
                                                    elevation: 2,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .black,
                                                    borderWidth: 0,
                                                    borderRadius: 5,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    hidesUnderline: true,
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  apiResultsu3 =
                                                      await AccessPointCall
                                                          .call(
                                                    route: 'create_advance',
                                                    customerId:
                                                        cashAdvancePageCreatorRecord!
                                                            .customerId,
                                                    email:
                                                        cashAdvancePageCreatorRecord!
                                                            .email,
                                                    userType:
                                                        cashAdvancePageCreatorRecord!
                                                            .userType,
                                                    beneficiaryId:
                                                        beneficiaryIdValue,
                                                    beneficiaryCountry:
                                                        beneficiaryCountryValue,
                                                    payoutCurrency:
                                                        beneficairyCurrencyValue,
                                                    description:
                                                        'Cash Advance Payout',
                                                    paymentMethod: cardValue,
                                                    planId: planIdValue,
                                                  );
                                                  if ((apiResultsu3
                                                          ?.succeeded ??
                                                      true)) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Cash Advance'),
                                                          content: Text(
                                                              'Congratulations. You have successfuly applied for a cash advance. the money will be paid out into the beneficiaries account. The money will be collected from the selected card in 30 days.'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );

                                                    context
                                                        .pushNamed('HomePage');
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text('Error'),
                                                          content: Text(
                                                              'Error applying for cash advance'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  }

                                                  setState(() {});
                                                },
                                                text: 'Apply',
                                                options: FFButtonOptions(
                                                  width: 300,
                                                  height: 40,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .subtitle2
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                          ),
                                                  elevation: 0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 100,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40, 40, 40, 40),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0x19FF5963),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Advance Details',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(40, 20, 40, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Color(0x26000000),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(40, 20, 40, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  FaIcon(
                                                    FontAwesomeIcons.infoCircle,
                                                    color: Colors.black,
                                                    size: 14,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Text(
                                                      'The money will be paid out using disburse',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(40, 20, 40, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  FaIcon(
                                                    FontAwesomeIcons.infoCircle,
                                                    color: Colors.black,
                                                    size: 14,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Text(
                                                      'Cash advance has automatic billing \nusing collect subscriptions',
                                                      maxLines: 2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(40, 20, 40, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Color(0x26000000),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(40, 20, 40, 0),
                                              child: Text(
                                                'When a company approaches you for a collaboration, they normally don\'t pay right away. Our cash advance offers you an opportunity to get paid so you can do the work you love.',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        '10%',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title2,
                                                      ),
                                                      Text(
                                                        'Interest',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 1,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x19000000),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        '30',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title2,
                                                      ),
                                                      Text(
                                                        'Payback',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 1,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x19000000),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        '2,5',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title2,
                                                      ),
                                                      Text(
                                                        'Points',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
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
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
