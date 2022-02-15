import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state_event.dart';

part 'login_state_state.dart';

class LoginStateBloc extends Bloc<LoginStateEvent, LoginStateState> {
  LoginStateBloc() : super(LoginStateInitial()) {
    /*on<LoginStateEvent>((event, emit) async {
      checkLoginState(event, emit);
    });*/

    on<CheckLoginEvent>((event, emit) async {
      return checkLoginState(event, emit);
    });

    on<LogoutEvent>((event, emit) async {
      // get preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();

      // remove JWT token from shared preferences
      prefs.remove("jwtToken");

      // TODO: cleanup cache

      return emit.call(NotLoggedInState());
    });
  }

  void checkLoginState(
      LoginStateEvent event, Emitter<LoginStateState> emit) async {
    if (kDebugMode) {
      print("check login state");
    }

    //get preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // check, if the jwt token exists
    if (!prefs.containsKey("jwtToken")) {
      //user is not logged in
      return emit.call(NotLoggedInState());
    }

    final jwtToken = prefs.getString("jwtToken")!;

    // check if JWT token is valid and is not expired
    bool hasExpired = JwtDecoder.isExpired(jwtToken);

    if (hasExpired) {
      return emit.call(NotLoggedInState());
    }

    // get expiration date
    DateTime expirationDate = JwtDecoder.getExpirationDate(jwtToken);

    if (kDebugMode) {
      print("JWT token expiration date: " + expirationDate.toString());
    }

    // TODO: check, if JWT token works on server

    // TODO: save all important information from server
    //  (e.q. username, profile picture and so on)

    return emit.call(LoggedInState());
  }
}
