part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GotoOnBoardingPage extends PageEvent {}

class GotoHomePage extends PageEvent {}
