import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'dart:ui';
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'videos_model.dart';
export 'videos_model.dart';

class VideosWidget extends StatefulWidget {
  const VideosWidget({
    super.key,
    this.videoIdParameter,
    this.videoRefParameter,
  });

  final int? videoIdParameter;
  final DocumentReference? videoRefParameter;

  static String routeName = 'Videos';
  static String routePath = '/videos';

  @override
  State<VideosWidget> createState() => _VideosWidgetState();
}

class _VideosWidgetState extends State<VideosWidget>
    with TickerProviderStateMixin {
  late VideosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideosModel());

    animationsMap.addAll({
      'stackOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1530.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(0.95, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1390.0.ms,
            begin: 0.645,
            end: 1.0,
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
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
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
                  width: 1536.0,
                  height: 960.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF302C42),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 960.0,
                          child: Stack(
                            children: [
                              PageView(
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 2.0,
                                        sigmaY: 2.0,
                                      ),
                                      child: Container(
                                        width: 1536.0,
                                        height: 930.0,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton1,
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              FlutterFlowTheme.of(context)
                                                  .gradientColorbutton2
                                            ],
                                            stops: [0.2, 0.4, 0.6, 0.8, 1.0],
                                            begin: AlignmentDirectional(
                                                0.03, -1.0),
                                            end: AlignmentDirectional(
                                                -0.03, 1.0),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          HomePageWidget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      child: Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -2.5, -1.0),
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/new_logoArtboard_3.png',
                                                              width: 289.0,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Container(
                                                            constraints:
                                                                BoxConstraints(
                                                              maxWidth: 350.0,
                                                              maxHeight: 55.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                ],
                                                                stops: [
                                                                  0.25,
                                                                  1.0
                                                                ],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        1.0, 0),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40.0),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'd1ck5luj' /* ENTREPRENEURSHIP SERIES */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
                                                                    decoration:
                                                                        TextDecoration
                                                                            .underline,
                                                                  ),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation']!),
                                                        ],
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'stackOnPageLoadAnimation']!),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        ProfilePageWidget
                                                            .routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
                                                                    Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: Image
                                                                      .network(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.photoUpload,
                                                                        ''),
                                                                  ).image,
                                                                ),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Container(
                                                                width: 90.0,
                                                                height: 90.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  currentUserPhoto,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
                                                                    Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                currentUserDisplayName,
                                                                'Unknown',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.safePop();
                                                    },
                                                    child: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              desktop: false,
                                            ))
                                              SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: BackdropFilter(
                                                        filter:
                                                            ImageFilter.blur(
                                                          sigmaX: 2.0,
                                                          sigmaY: 2.0,
                                                        ),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 100.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          50.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      50.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      50.0),
                                                            ),
                                                          ),
                                                          child: Container(
                                                            width: 390.0,
                                                            height: 839.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .backgroundSignup,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary
                                                                ],
                                                                stops: [
                                                                  0.8,
                                                                  1.0
                                                                ],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        0, 1.0),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        50.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        50.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        50.0),
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          25.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowYoutubePlayer(
                                                                    url:
                                                                        'https://youtu.be/g2pca_YYe-k',
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        2.078,
                                                                    height: MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        4.368,
                                                                    autoPlay:
                                                                        false,
                                                                    looping:
                                                                        true,
                                                                    mute: false,
                                                                    showControls:
                                                                        true,
                                                                    showFullScreen:
                                                                        true,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'pe29j1pg' /* DESCRIPTION:  */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Flexible(
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'yi2e1abg' /* We have hosted a flashy virtua... */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'xt747saj' /* Likes 1k */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'vs3flnxg' /* Views 100k */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 20.0)),
                                                ),
                                              ),
                                            Expanded(
                                              child: Container(
                                                width: 1724.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .backgroundSignup,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .backgroundSignup
                                                    ],
                                                    stops: [
                                                      0.45,
                                                      0.5,
                                                      0.55,
                                                      0.6
                                                    ],
                                                    begin: AlignmentDirectional(
                                                        0.98, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.98, 1.0),
                                                  ),
                                                ),
                                                child: GridView(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 10.0,
                                                    childAspectRatio: 1.25,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: BackdropFilter(
                                                        filter:
                                                            ImageFilter.blur(
                                                          sigmaX: 2.0,
                                                          sigmaY: 2.0,
                                                        ),
                                                        child:
                                                            SingleChildScrollView(
                                                          primary: false,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation:
                                                                    100.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            50.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            50.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            50.0),
                                                                  ),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxHeight:
                                                                        MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .backgroundSignup,
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondary
                                                                      ],
                                                                      stops: [
                                                                        0.8,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                      end: AlignmentDirectional(
                                                                          0,
                                                                          1.0),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              50.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              50.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              50.0),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            337.0,
                                                                        height:
                                                                            610.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF161515),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              25.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              FlutterFlowYoutubePlayer(
                                                                            url:
                                                                                'https://youtu.be/NTcePTBpvU0',
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 2.845,
                                                                            autoPlay:
                                                                                false,
                                                                            looping:
                                                                                true,
                                                                            mute:
                                                                                false,
                                                                            showControls:
                                                                                true,
                                                                            showFullScreen:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            Container(
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            maxWidth:
                                                                                700.0,
                                                                            maxHeight:
                                                                                595.0,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0x00FFFFFF),
                                                                          ),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            primary:
                                                                                false,
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'gysfrs87' /* DESCRIPTION:  */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: 'Montserrat',
                                                                                        fontSize: 18.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                                Flexible(
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'id21jpgb' /* We have hosted a flashy virtua... */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Montserrat',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      StreamBuilder<VideoRecord>(
                                                                                        stream: VideoRecord.getDocument(widget.videoRefParameter!),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: SpinKitFadingFour(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  size: 50.0,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }

                                                                                          final stackVideoRecord = snapshot.data!;

                                                                                          return InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              final firestoreBatch = FirebaseFirestore.instance.batch();
                                                                                              try {
                                                                                                if (stackVideoRecord.likes.contains(currentUserReference)) {
                                                                                                  firestoreBatch.update(widget.videoRefParameter!, {
                                                                                                    ...mapToFirestore(
                                                                                                      {
                                                                                                        'num_like': FieldValue.increment(-(1)),
                                                                                                        'likes': FieldValue.arrayRemove([currentUserReference]),
                                                                                                      },
                                                                                                    ),
                                                                                                  });
                                                                                                  return;
                                                                                                } else {
                                                                                                  firestoreBatch.update(widget.videoRefParameter!, {
                                                                                                    ...mapToFirestore(
                                                                                                      {
                                                                                                        'num_like': FieldValue.increment(1),
                                                                                                        'likes': FieldValue.arrayUnion([currentUserReference]),
                                                                                                      },
                                                                                                    ),
                                                                                                  });
                                                                                                  return;
                                                                                                }
                                                                                              } finally {
                                                                                                await firestoreBatch.commit();
                                                                                              }
                                                                                            },
                                                                                            child: Stack(
                                                                                              children: [
                                                                                                if (stackVideoRecord.likes.contains(currentUserReference) == false)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: Icon(
                                                                                                      Icons.favorite_border,
                                                                                                      color: Colors.white,
                                                                                                      size: 27.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                if (stackVideoRecord.likes.contains(currentUserReference) == true)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: Icon(
                                                                                                      Icons.favorite,
                                                                                                      color: Colors.white,
                                                                                                      size: 27.0,
                                                                                                    ),
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(2.0, 8.0, 8.0, 0.0),
                                                                                        child: FutureBuilder<List<VideoRecord>>(
                                                                                          future: queryVideoRecordOnce(
                                                                                            queryBuilder: (videoRecord) => videoRecord.where(
                                                                                              'Videoid',
                                                                                              isEqualTo: widget.videoIdParameter,
                                                                                            ),
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
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    size: 50.0,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                            List<VideoRecord> textVideoRecordList = snapshot.data!;
                                                                                            // Return an empty Container when the item does not exist.
                                                                                            if (snapshot.data!.isEmpty) {
                                                                                              return Container();
                                                                                            }
                                                                                            final textVideoRecord = textVideoRecordList.isNotEmpty ? textVideoRecordList.first : null;

                                                                                            return Text(
                                                                                              '${textVideoRecord?.likes.length.toString()}likes',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Montserrat',
                                                                                                    color: FlutterFlowTheme.of(context).info,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      FlutterFlowIconButton(
                                                                                        borderRadius: 8.0,
                                                                                        buttonSize: 40.0,
                                                                                        icon: Icon(
                                                                                          Icons.mode_comment_outlined,
                                                                                          color: FlutterFlowTheme.of(context).info,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          context.pushNamed(
                                                                                            VideocommentsWidget.routeName,
                                                                                            extra: <String, dynamic>{
                                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                                hasTransition: true,
                                                                                                transitionType: PageTransitionType.bottomToTop,
                                                                                              ),
                                                                                            },
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(1.0, 0.0),
                                                                                        child: FutureBuilder<int>(
                                                                                          future: queryCommentsRecordCount(
                                                                                            queryBuilder: (commentsRecord) => commentsRecord
                                                                                                .where(
                                                                                                  'videoId',
                                                                                                  isEqualTo: widget.videoIdParameter,
                                                                                                )
                                                                                                .orderBy('timestamp', descending: true),
                                                                                          ),
                                                                                          builder: (context, snapshot) {
                                                                                            // Customize what your widget looks like when it's loading.
                                                                                            if (!snapshot.hasData) {
                                                                                              return Center(
                                                                                                child: SizedBox(
                                                                                                  width: 50.0,
                                                                                                  height: 50.0,
                                                                                                  child: SpinKitFadingFour(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    size: 50.0,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                            int textCount = snapshot.data!;

                                                                                            return Text(
                                                                                              '${textCount.toString()}coments',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Montserrat',
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontStyle: FontStyle.italic,
                                                                                                  ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ].addToEnd(SizedBox(width: 10.0)),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 375.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x00FFFFFF),
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 382.0,
                                                                                        height: 406.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Colors.black,
                                                                                        ),
                                                                                        child: StreamBuilder<List<CommentsRecord>>(
                                                                                          stream: queryCommentsRecord(
                                                                                            queryBuilder: (commentsRecord) => commentsRecord
                                                                                                .where(
                                                                                                  'videoId',
                                                                                                  isEqualTo: widget.videoIdParameter,
                                                                                                )
                                                                                                .orderBy('timestamp', descending: true),
                                                                                          ),
                                                                                          builder: (context, snapshot) {
                                                                                            // Customize what your widget looks like when it's loading.
                                                                                            if (!snapshot.hasData) {
                                                                                              return Center(
                                                                                                child: SizedBox(
                                                                                                  width: 50.0,
                                                                                                  height: 50.0,
                                                                                                  child: SpinKitFadingFour(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    size: 50.0,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                            List<CommentsRecord> listViewCommentsRecordList = snapshot.data!;

                                                                                            return ListView.separated(
                                                                                              padding: EdgeInsets.symmetric(vertical: 4.0),
                                                                                              scrollDirection: Axis.vertical,
                                                                                              itemCount: listViewCommentsRecordList.length,
                                                                                              separatorBuilder: (_, __) => SizedBox(height: 4.0),
                                                                                              itemBuilder: (context, listViewIndex) {
                                                                                                final listViewCommentsRecord = listViewCommentsRecordList[listViewIndex];
                                                                                                return Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 2.0,
                                                                                                  child: Container(
                                                                                                    width: 100.0,
                                                                                                    height: 166.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).gradientColorbutton2,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            children: [
                                                                                                              AuthUserStreamWidget(
                                                                                                                builder: (context) => Container(
                                                                                                                  width: 30.0,
                                                                                                                  height: 30.0,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: Image.network(
                                                                                                                    currentUserPhoto,
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              StreamBuilder<List<UsersRecord>>(
                                                                                                                stream: queryUsersRecord(
                                                                                                                  queryBuilder: (usersRecord) => usersRecord.where(
                                                                                                                    'uid',
                                                                                                                    isEqualTo: listViewCommentsRecord.userRef?.id,
                                                                                                                  ),
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
                                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                                          size: 50.0,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  }
                                                                                                                  List<UsersRecord> textUsersRecordList = snapshot.data!;
                                                                                                                  // Return an empty Container when the item does not exist.
                                                                                                                  if (snapshot.data!.isEmpty) {
                                                                                                                    return Container();
                                                                                                                  }
                                                                                                                  final textUsersRecord = textUsersRecordList.isNotEmpty ? textUsersRecordList.first : null;

                                                                                                                  return Text(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      textUsersRecord?.email,
                                                                                                                      'user\'s email will appear here',
                                                                                                                    ),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Montserrat',
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ),
                                                                                                            ].divide(SizedBox(width: 6.0)),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          width: 371.0,
                                                                                                          height: 95.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                                          ),
                                                                                                          child: Text(
                                                                                                            listViewCommentsRecord.text,
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Montserrat',
                                                                                                                  letterSpacing: 0.0,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
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
                                                                              ].divide(SizedBox(height: 20.0)),
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
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ].addToEnd(SizedBox(height: 30.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://picsum.photos/seed/769/600',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 16.0),
                                  child:
                                      smooth_page_indicator.SmoothPageIndicator(
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) async {
                                      await _model.pageViewController!
                                          .animateToPage(
                                        i,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                      safeSetState(() {});
                                    },
                                    effect: smooth_page_indicator
                                        .ExpandingDotsEffect(
                                      expansionFactor: 3.0,
                                      spacing: 8.0,
                                      radius: 16.0,
                                      dotWidth: 16.0,
                                      dotHeight: 8.0,
                                      dotColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      activeDotColor:
                                          FlutterFlowTheme.of(context).primary,
                                      paintStyle: PaintingStyle.fill,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
