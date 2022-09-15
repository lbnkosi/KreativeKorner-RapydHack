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

class PersonalLoanOptionWidget extends StatefulWidget {
  const PersonalLoanOptionWidget({
    Key? key,
    this.loanId,
  }) : super(key: key);

  final String? loanId;

  @override
  _PersonalLoanOptionWidgetState createState() =>
      _PersonalLoanOptionWidgetState();
}

class _PersonalLoanOptionWidgetState extends State<PersonalLoanOptionWidget> {
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
    return StreamBuilder<List<CreatorRecord>>(
      stream: queryCreatorRecord(
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
        List<CreatorRecord> personalLoanOptionCreatorRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final personalLoanOptionCreatorRecord =
            personalLoanOptionCreatorRecordList.isNotEmpty
                ? personalLoanOptionCreatorRecordList.first
                : null;
        return Title(
            title: 'PersonalLoanOption',
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
                                                  List<LoanPlansRecord>>(
                                                stream: queryLoanPlansRecord(
                                                  queryBuilder:
                                                      (loanPlansRecord) =>
                                                          loanPlansRecord.where(
                                                              'loan_id',
                                                              isEqualTo: widget
                                                                  .loanId),
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
                                                  List<LoanPlansRecord>
                                                      planIdLoanPlansRecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown(
                                                    initialOption:
                                                        planIdValue ??= 'null',
                                                    options:
                                                        planIdLoanPlansRecordList
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
                                                      personalLoanOptionCreatorRecord!
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
                                                      personalLoanOptionCreatorRecord!
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
                                                      personalLoanOptionCreatorRecord!
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
                                                      personalLoanOptionCreatorRecord!
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
                                              child: StreamBuilder<
                                                  List<LoanPlansRecord>>(
                                                stream: queryLoanPlansRecord(
                                                  queryBuilder:
                                                      (loanPlansRecord) =>
                                                          loanPlansRecord.where(
                                                              'loan_id',
                                                              isEqualTo: widget
                                                                  .loanId),
                                                  singleRecord: true,
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
                                                  List<LoanPlansRecord>
                                                      buttonLoanPlansRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the document does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final buttonLoanPlansRecord =
                                                      buttonLoanPlansRecordList
                                                              .isNotEmpty
                                                          ? buttonLoanPlansRecordList
                                                              .first
                                                          : null;
                                                  return FFButtonWidget(
                                                    onPressed: () async {
                                                      apiResultsu3 =
                                                          await AccessPointCall
                                                              .call(
                                                        route: 'create_loan',
                                                        customerId:
                                                            personalLoanOptionCreatorRecord!
                                                                .customerId,
                                                        email:
                                                            personalLoanOptionCreatorRecord!
                                                                .email,
                                                        userType:
                                                            personalLoanOptionCreatorRecord!
                                                                .userType,
                                                        beneficiaryId:
                                                            beneficiaryIdValue,
                                                        beneficiaryCountry:
                                                            beneficiaryCountryValue,
                                                        payoutCurrency:
                                                            beneficairyCurrencyValue,
                                                        description:
                                                            'Cash Advance Payout',
                                                        paymentMethod:
                                                            cardValue,
                                                        planId: planIdValue,
                                                        months:
                                                            buttonLoanPlansRecord!
                                                                .term,
                                                        interest:
                                                            buttonLoanPlansRecord!
                                                                .loanInterest,
                                                        amount:
                                                            buttonLoanPlansRecord!
                                                                .loanAmount,
                                                        totalRepayment:
                                                            buttonLoanPlansRecord!
                                                                .totalRepayment,
                                                        productId:
                                                            buttonLoanPlansRecord!
                                                                .productId,
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
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );

                                                        context.pushNamed(
                                                            'HomePage');
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text('Error'),
                                                              content: Text(
                                                                  'Error applying for cash advance'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12,
                                                              ),
                                                      elevation: 0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: StreamBuilder<List<LoanPlansRecord>>(
                                    stream: queryLoanPlansRecord(
                                      queryBuilder: (loanPlansRecord) =>
                                          loanPlansRecord.where('loan_id',
                                              isEqualTo: widget.loanId),
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<LoanPlansRecord>
                                          containerLoanPlansRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final containerLoanPlansRecord =
                                          containerLoanPlansRecordList
                                                  .isNotEmpty
                                              ? containerLoanPlansRecordList
                                                  .first
                                              : null;
                                      return Container(
                                        width: 100,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      FaIcon(
                                                        FontAwesomeIcons
                                                            .infoCircle,
                                                        color: Colors.black,
                                                        size: 14,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child: Text(
                                                          'The money will be paid out using disburse',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      FaIcon(
                                                        FontAwesomeIcons
                                                            .infoCircle,
                                                        color: Colors.black,
                                                        size: 14,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child: Text(
                                                          'Cash advance has automatic billing \nusing collect subscriptions',
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            containerLoanPlansRecord!
                                                                .loanInterest!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title2,
                                                          ),
                                                          Text(
                                                            'Interest',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                        width: 1,
                                                        height: 30,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x19000000),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            containerLoanPlansRecord!
                                                                .term!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title2,
                                                          ),
                                                          Text(
                                                            'Payback',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                        width: 1,
                                                        height: 30,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x19000000),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            containerLoanPlansRecord!
                                                                .monthlyPayments!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title2,
                                                          ),
                                                          Text(
                                                            'Monthly Payments',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                      );
                                    },
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
