import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1130.0.ms,
            begin: Offset(-12.0, 0.0),
            end: Offset(20.0, 0.0),
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 1802.0,
                height: 960.0,
                decoration: BoxDecoration(
                  color: Color(0xFF302C42),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 20.0, 0.0),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/new_logoArtboard_3_copy.png',
                                        width: 154.0,
                                        height: 160.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation']!),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'zeothptx' /* INTRODUCTION */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'owna4pf9' /* ABOUT US */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Container(
                                      width: 150.0,
                                      height: 55.0,
                                      constraints: BoxConstraints(
                                        maxWidth: 150.0,
                                        maxHeight: 55.0,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF8176AF),
                                            Color(0xFFC0B7E8)
                                          ],
                                          stops: [0.25, 1.0],
                                          begin:
                                              AlignmentDirectional(-1.0, 0.0),
                                          end: AlignmentDirectional(1.0, 0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (loggedIn) {
                                            context.pushNamed(
                                              VideosCopyWidget.routeName,
                                              queryParameters: {
                                                'videoIdParameter':
                                                    serializeParam(
                                                  0,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            context.pushNamed(
                                              AuthentificationWidget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                ),
                                              },
                                            );
                                          }
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'mpbu8det' /* WATCH NOW */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 150.0,
                                          height: 55.0,
                                          padding: EdgeInsets.all(0.0),
                                          iconPadding: EdgeInsets.all(0.0),
                                          color: Color(0x00FFFFFF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Color(0x00FFFFFF),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 50.0)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          GradientText(
                                            FFLocalizations.of(context).getText(
                                              '0fhgrweu' /* Dive  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 46.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                              Color(0xFF654FF2),
                                              Color(0xFF6A55F5)
                                            ],
                                            gradientDirection:
                                                GradientDirection.ltr,
                                            gradientType: GradientType.linear,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '7lhuq69m' /* Into The New Age */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 40.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'q7rxme2t' /* of */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 40.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          GradientText(
                                            FFLocalizations.of(context).getText(
                                              '9olepdpb' /*  Entrepreneurs  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gradientColorbutton1,
                                                  fontSize: 45.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton1,
                                              Color(0xFF9690B1)
                                            ],
                                            gradientDirection:
                                                GradientDirection.ltr,
                                            gradientType: GradientType.linear,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '4bxhbz5t' /* Starting with */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 40.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'fza79tzf' /* YOU ! */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gradientColorbutton1,
                                                  fontSize: 50.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ].divide(SizedBox(height: 20.0)),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'chx53opv' /* A futuristic approach to Educa... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Montserrat',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 150.0,
                                        height: 55.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 150.0,
                                          maxHeight: 55.0,
                                        ),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFF8176AF),
                                              Color(0xFFC0B7E8)
                                            ],
                                            stops: [0.25, 1.0],
                                            begin:
                                                AlignmentDirectional(-1.0, 0.0),
                                            end: AlignmentDirectional(1.0, 0),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                if (loggedIn) {
                                                  context.pushNamed(
                                                    VideosCopyWidget.routeName,
                                                    queryParameters: {
                                                      'videoIdParameter':
                                                          serializeParam(
                                                        0,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                } else {
                                                  context.pushNamed(
                                                    AuthentificationWidget
                                                        .routeName,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                      ),
                                                    },
                                                  );
                                                }
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'zlh58ha5' /* WATCH NOW */,
                                              ),
                                              options: FFButtonOptions(
                                                width: 150.0,
                                                height: 55.0,
                                                padding: EdgeInsets.all(0.0),
                                                iconPadding:
                                                    EdgeInsets.all(0.0),
                                                color: Color(0x00FFFFFF),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .headlineSmall
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .backgroundSignup,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                borderSide: BorderSide(
                                                  color: Color(0x00FFFFFF),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Icon(
                                        Icons.double_arrow_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gradientColorbutton2,
                                        size: 55.0,
                                      ).animateOnPageLoad(animationsMap[
                                          'iconOnPageLoadAnimation']!),
                                    ],
                                  ),
                                ]
                                    .divide(SizedBox(height: 70.0))
                                    .addToStart(SizedBox(height: 25.0))
                                    .addToEnd(SizedBox(height: 20.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 7.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(240.0),
                                        bottomRight: Radius.circular(100.0),
                                        topLeft: Radius.circular(100.0),
                                        topRight: Radius.circular(100.0),
                                      ),
                                    ),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 1000),
                                      curve: Curves.bounceOut,
                                      width: 534.0,
                                      height: 487.0,
                                      constraints: BoxConstraints(
                                        maxWidth: 534.0,
                                        maxHeight: 487.0,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? 'assets/images/landingPageImage1.png'
                                                : 'assets/images/landingPageImage1.png',
                                          ).image,
                                        ),
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .gradientColorbutton1,
                                            FlutterFlowTheme.of(context)
                                                .gradientColorbutton2
                                          ],
                                          stops: [0.5, 1.0],
                                          begin:
                                              AlignmentDirectional(0.0, -1.0),
                                          end: AlignmentDirectional(0, 1.0),
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(240.0),
                                          bottomRight: Radius.circular(100.0),
                                          topLeft: Radius.circular(100.0),
                                          topRight: Radius.circular(100.0),
                                        ),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .gradientColorbutton2,
                                          width: 4.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF211E2E),
                                  Color(0xFF3A3456),
                                  Color(0xFF211E2E)
                                ],
                                stops: [0.3, 0.6, 1.0],
                                begin: AlignmentDirectional(-0.64, 1.0),
                                end: AlignmentDirectional(0.64, -1.0),
                              ),
                              borderRadius: BorderRadius.circular(90.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .gradientColorbutton1,
                                width: 1.0,
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 25.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'q94e25xk' /* INTRODUCTION */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 40.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ikdjxbbj' /* TO THE YOUTH TALK */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 282.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Icon(
                                          FFIcons.karrowRight,
                                          color: FlutterFlowTheme.of(context)
                                              .gradientColorbutton1,
                                          size: 85.0,
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'o330cxiv' /* 
The youth talk operates in th... */
                                              ,
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLines: 90,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ]
                                        .addToStart(SizedBox(width: 10.0))
                                        .addToEnd(SizedBox(width: 30.0)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                            borderRadius: BorderRadius.circular(70.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 7.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(100.0),
                                        bottomRight: Radius.circular(240.0),
                                        topLeft: Radius.circular(240.0),
                                        topRight: Radius.circular(100.0),
                                      ),
                                    ),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 1000),
                                      curve: Curves.bounceOut,
                                      width: 796.0,
                                      height: 711.0,
                                      constraints: BoxConstraints(
                                        maxWidth: 470.0,
                                        maxHeight: 800.0,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.fitHeight,
                                          image: Image.asset(
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? 'assets/images/landingPageImage2.png'
                                                : 'assets/images/landingPageImage2.png',
                                          ).image,
                                        ),
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .gradientColorbutton1,
                                            FlutterFlowTheme.of(context)
                                                .gradientColorbutton2
                                          ],
                                          stops: [0.5, 1.0],
                                          begin:
                                              AlignmentDirectional(0.0, -1.0),
                                          end: AlignmentDirectional(0, 1.0),
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(100.0),
                                          bottomRight: Radius.circular(240.0),
                                          topLeft: Radius.circular(240.0),
                                          topRight: Radius.circular(100.0),
                                        ),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .gradientColorbutton2,
                                          width: 4.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 180.0,
                                  maxHeight: 400.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '8x14c7e0' /* ABOUT US */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 40.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Container(
                                    width: 663.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 40.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ch68us80' /* The youth talk is a digital pl... */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 150.0,
                                    height: 55.0,
                                    constraints: BoxConstraints(
                                      maxWidth: 150.0,
                                      maxHeight: 55.0,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF8176AF),
                                          Color(0xFFC0B7E8)
                                        ],
                                        stops: [0.25, 1.0],
                                        begin: AlignmentDirectional(-1.0, 0.0),
                                        end: AlignmentDirectional(1.0, 0),
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (loggedIn) {
                                          context.pushNamed(
                                            VideosCopyWidget.routeName,
                                            queryParameters: {
                                              'videoIdParameter':
                                                  serializeParam(
                                                0,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        } else {
                                          context.pushNamed(
                                            AuthentificationWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                              ),
                                            },
                                          );
                                        }
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'f8o18eni' /* Explore Now */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 55.0,
                                        padding: EdgeInsets.all(0.0),
                                        iconPadding: EdgeInsets.all(0.0),
                                        color: Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .backgroundSignup,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ]
                                    .divide(SizedBox(height: 100.0))
                                    .addToStart(SizedBox(height: 30.0))
                                    .addToEnd(SizedBox(height: 30.0)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/new_logoArtboard_3_copy.png',
                                      width: 154.0,
                                      height: 160.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Vector_21.png',
                                  width: 240.0,
                                  height: 200.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                width: 120.0,
                                height: 160.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ymgj9vfa' /* ABOUT US */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'kj1f1ejr' /* INTRODUCTION */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 25.0)),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Vector_21.png',
                                  width: 183.0,
                                  height: 200.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'mb48zl1f' /* SOCIALIZE WITH THE YOUTH TALK */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Container(
                                    width: 160.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Color(0x00FFFFFF),
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton2,
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton1,
                                          hoverIconColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          icon: FaIcon(
                                            FontAwesomeIcons.instagram,
                                            color: FlutterFlowTheme.of(context)
                                                .backgroundSignup,
                                            size: 23.0,
                                          ),
                                          onPressed: () async {
                                            await launchURL(
                                                'https://www.instagram.com/youthh.talk/');
                                          },
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton2,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton2,
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton1,
                                          hoverIconColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          icon: FaIcon(
                                            FontAwesomeIcons.linkedinIn,
                                            color: FlutterFlowTheme.of(context)
                                                .backgroundSignup,
                                            size: 23.0,
                                          ),
                                          onPressed: () async {
                                            await launchURL(
                                                'https://www.linkedin.com/company/the-youth-talk/');
                                          },
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton2,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton2,
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton1,
                                          hoverIconColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          icon: FaIcon(
                                            FontAwesomeIcons.youtube,
                                            color: FlutterFlowTheme.of(context)
                                                .backgroundSignup,
                                            size: 23.0,
                                          ),
                                          onPressed: () async {
                                            await launchURL(
                                                'https://www.youtube.com/@officialyouthtalk');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 150.0,
                                    height: 55.0,
                                    constraints: BoxConstraints(
                                      maxWidth: 150.0,
                                      maxHeight: 55.0,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF8176AF),
                                          Color(0xFFC0B7E8)
                                        ],
                                        stops: [0.25, 1.0],
                                        begin: AlignmentDirectional(-1.0, 0.0),
                                        end: AlignmentDirectional(1.0, 0),
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (loggedIn) {
                                          context.pushNamed(
                                            VideosCopyWidget.routeName,
                                            queryParameters: {
                                              'videoIdParameter':
                                                  serializeParam(
                                                0,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        } else {
                                          context.pushNamed(
                                            AuthentificationWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                              ),
                                            },
                                          );
                                        }
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'sq2eq4ji' /* WATCH NOW */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 55.0,
                                        padding: EdgeInsets.all(0.0),
                                        iconPadding: EdgeInsets.all(0.0),
                                        color: Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .backgroundSignup,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 25.0)),
                              ),
                            ],
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 90.0))
                          .addToEnd(SizedBox(height: 40.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
