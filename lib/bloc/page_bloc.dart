import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(OnInitialPage());

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GotoSplashScreen) {
      yield OnSplashScreen();
    } else if (event is GotoSignInScreen) {
      yield OnSignInScreen();
    } else if (event is GotoSignUpScreen) {
      yield OnSignUpScreen();
      // } else if (event is GotoOnBoardingPage) {
      //   yield OnBoardingPage();
    } else if (event is GotoHomePage) {
      yield OnHomePage();
    } else if (event is GotoSpotP1) {
      yield OnSpotP1();
    } else if (event is GotoSpotP2) {
      yield OnSpotP2();
    } else if (event is GotoSpotP3) {
      yield OnSpotP3();
    } else if (event is GotoSpotP4) {
      yield OnSpotP4();
    }
  }
}
