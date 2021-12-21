part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GotoSplashScreen extends PageEvent {}

class GotoOnBoardingPage extends PageEvent {}

class GotoSignInScreen extends PageEvent {}

class GotoSignUpScreen extends PageEvent {}

class GotoHomePage extends PageEvent {}

class GotoSpotP1 extends PageEvent {}

class GotoSpotP2 extends PageEvent {}

class GotoSpotP3 extends PageEvent {}

class GotoSpotP4 extends PageEvent {}
