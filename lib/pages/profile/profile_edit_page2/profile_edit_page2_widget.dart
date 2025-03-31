import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'profile_edit_page2_model.dart';
export 'profile_edit_page2_model.dart';

class ProfileEditPage2Widget extends StatefulWidget {
  const ProfileEditPage2Widget({super.key});

  static String routeName = 'ProfileEditPage2';
  static String routePath = '/ProfileEditPage2';

  @override
  State<ProfileEditPage2Widget> createState() => _ProfileEditPage2WidgetState();
}

class _ProfileEditPage2WidgetState extends State<ProfileEditPage2Widget>
    with TickerProviderStateMixin {
  late ProfileEditPage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileEditPage2Model());

    _model.yourNameTextController ??= TextEditingController();
    _model.yourNameFocusNode ??= FocusNode();

    _model.cityTextController ??= TextEditingController();
    _model.cityFocusNode ??= FocusNode();

    _model.myBioTextController ??= TextEditingController();
    _model.myBioFocusNode ??= FocusNode();

    animationsMap.addAll({
      'blurOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-0.297, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1440.0.ms,
            begin: Offset(15.999999999999986, 0.0),
            end: Offset(-2.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.transparent,
      body: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2.0,
            sigmaY: 2.0,
          ),
          child: Container(
            width: 1736.0,
            height: 1231.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Container(
                    height: 1528.0,
                    constraints: BoxConstraints(
                      maxWidth: 483.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2.0,
                      sigmaY: 2.0,
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 570.0,
                        maxHeight: 830.0,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).gradientColorbutton1,
                            FlutterFlowTheme.of(context).secondary
                          ],
                          stops: [0.9, 1.0],
                          begin: AlignmentDirectional(1.0, 0.0),
                          end: AlignmentDirectional(-1.0, 0),
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 40.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 100.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          fillColor: Colors.transparent,
                                          icon: FaIcon(
                                            FontAwesomeIcons.arrowLeft,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ).animateOnPageLoad(animationsMap[
                                            'iconButtonOnPageLoadAnimation']!),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'qui90mhx' /* Back */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 0.0, 0.0),
                                  child: GradientText(
                                    FFLocalizations.of(context).getText(
                                      '36ttrazn' /* Edit Profile */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 32.0,
                                          letterSpacing: 0.0,
                                        ),
                                    colors: [
                                      FlutterFlowTheme.of(context).secondary,
                                      FlutterFlowTheme.of(context).primaryText
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).width >= 768.0
                                  ? 530.0
                                  : 630.0,
                              constraints: BoxConstraints(
                                maxWidth: 570.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 16.0),
                                    child: TextFormField(
                                      controller: _model.yourNameTextController,
                                      focusNode: _model.yourNameFocusNode,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'yoiydkwi' /* Your Name */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 24.0, 0.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                      validator: _model
                                          .yourNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 16.0),
                                    child: TextFormField(
                                      controller: _model.cityTextController,
                                      focusNode: _model.cityFocusNode,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '2hjfhoj4' /* Your City */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 24.0, 0.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                      validator: _model
                                          .cityTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 12.0),
                                    child: FlutterFlowDropDown<String>(
                                      controller:
                                          _model.stateValueController ??=
                                              FormFieldController<String>(
                                        _model.stateValue ??=
                                            FFLocalizations.of(context).getText(
                                          'v4hrjp46' /* State */,
                                        ),
                                      ),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          '9cn80ydf' /* State */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          've1060oe' /* Alabama */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'vktfvk96' /* Alaska */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'msbzibd0' /* Arizona */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '02qb1bql' /* Arkansas */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'i9b2fmqw' /* California */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'cpqywwu6' /* Colorado */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'h1fsx5q8' /* Connecticut */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'si35vso8' /* Delaware */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'pfyo3bp8' /* Florida */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wkw9zi3x' /* Georgia */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '9pld5q7m' /* Hawaii */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'p4251q24' /* Idaho */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'aq3s8c9b' /* Illinoi */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          's11uw81a' /* Indiana */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ifdn8j81' /* Iowa */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'nr6fuscl' /* Kansas */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '26taogm7' /* Kentucky */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'yt1k76fs' /* Louisiana */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'asqxnt7e' /* Maine */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'q8p1szr7' /* Maryland */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'bafn0g7f' /* Massachusetts */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'n3a98msa' /* Michigan */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4pz1a3qv' /* Minnesota */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wu0u0qs2' /* Mississippi */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'etbynfbt' /* Missouri */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'o6po20zv' /* Monta */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7k74ufck' /* Nebraska */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '1qt91nrb' /* Nevada */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'flzbklpm' /* New Hampshire */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '48paewgf' /* New Jersey */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'r0brbo42' /* New Mexico */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'cnxc0msu' /* New York */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'huave01d' /* North Carolina */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qp6zz4br' /* North Dak */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rsoj3jps' /* Ohio */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'trwhik7u' /* Oklahoma */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5ilhnm41' /* Oregon */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'dhkv634w' /* Pennsylvani */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          't73g52c6' /* Rhode Island */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ohy2977a' /* South Caroli */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'kmr1mfad' /* South Dakota */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '8f0tws7e' /* Tennessee */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jnii92zt' /* Texas */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mi23j40y' /* Utah */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7tiqha0s' /* Vermont */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'enw1gjb2' /* Virginia */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'm82505dz' /* Washingto */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '84uhe1q1' /* West Virginia */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qmj0axq8' /* Wisconsin */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'eo2lsw30' /* Wyoming */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '21b6mov5' /* Rwanda */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '495cf2q2' /* Togo */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'lvqi0cda' /* burundi */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(
                                          () => _model.stateValue = val),
                                      width: double.infinity,
                                      height: 56.0,
                                      searchHintTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.black,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                      searchTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                letterSpacing: 0.0,
                                              ),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'zu26plqi' /* Select State */,
                                      ),
                                      searchHintText:
                                          FFLocalizations.of(context).getText(
                                        'nvd2ss5u' /* search for your country here */,
                                      ),
                                      searchCursorColor:
                                          FlutterFlowTheme.of(context)
                                              .gradientColorbutton2,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 15.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 4.0, 12.0, 4.0),
                                      isSearchable: true,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 20.0),
                                    child: TextFormField(
                                      controller: _model.myBioTextController,
                                      focusNode: _model.myBioFocusNode,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'h9vmwz5i' /* Your bio */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 24.0, 0.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLines: 3,
                                      validator: _model
                                          .myBioTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Container(
                                      width: 231.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .gradientColorbutton1,
                                            FlutterFlowTheme.of(context)
                                                .secondary
                                          ],
                                          stops: [0.5, 1.0],
                                          begin:
                                              AlignmentDirectional(0.0, -1.0),
                                          end: AlignmentDirectional(0, 1.0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.05),
                                        child: StreamBuilder<List<VideoRecord>>(
                                          stream: queryVideoRecord(
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child: SpinKitFadingFour(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<VideoRecord>
                                                buttonVideoRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final buttonVideoRecord =
                                                buttonVideoRecordList.isNotEmpty
                                                    ? buttonVideoRecordList
                                                        .first
                                                    : null;

                                            return FFButtonWidget(
                                              onPressed: () async {
                                                await currentUserReference!
                                                    .update(
                                                        createUsersRecordData(
                                                  displayName: _model
                                                      .yourNameTextController
                                                      .text,
                                                  city: _model
                                                      .cityTextController.text,
                                                  state: _model.stateValue,
                                                  bio: _model
                                                      .myBioTextController.text,
                                                ));

                                                context.goNamed(
                                                  VideosWidget.routeName,
                                                  queryParameters: {
                                                    'videoIdParameter':
                                                        serializeParam(
                                                      1,
                                                      ParamType.int,
                                                    ),
                                                    'videoRefParameter':
                                                        serializeParam(
                                                      buttonVideoRecord
                                                          ?.reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '6lhwi828' /* Save Changes */,
                                              ),
                                              options: FFButtonOptions(
                                                width: 250.0,
                                                height: 90.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Colors.transparent,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 22.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ].addToStart(SizedBox(height: 30.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Container(
                    height: 1346.0,
                    constraints: BoxConstraints(
                      maxWidth: 483.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['blurOnPageLoadAnimation']!),
    );
  }
}
