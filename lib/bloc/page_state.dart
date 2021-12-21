part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();

  @override
  List<Object> get props => [];
}

class OnInitialPage extends PageState {}

class OnSplashScreen extends PageState {}

class OnSignInScreen extends PageState {}

class OnSignUpScreen extends PageState {}

class OnBoardingPage extends PageState {}

class OnHomePage extends PageState {}

class OnSpotP1 extends PageState {}

class OnSpotP2 extends PageState {}

class OnSpotP3 extends PageState {}

class OnSpotP4 extends PageState {}
