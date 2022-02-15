import 'package:dartz/dartz.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ts_connect_app/domain/entities/login_response_entity.dart';
import 'package:ts_connect_app/domain/failures/failures.dart';

class LoginUseCases {

  LoginUseCases() {
    //
  }

  Future<bool> checkIfLoggedIn() async {
    // get shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // check, if the jwt token exists
    if (!prefs.containsKey("jwtToken")) {
      //user is not logged in
      return false;
    }

    final jwtToken = prefs.getString("jwtToken")!;

    // check if JWT token is valid and is not expired
    bool hasExpired = JwtDecoder.isExpired(jwtToken);

    if (hasExpired) {
      return false;
    }

    // TODO: check if signature secret has changed (by accessing the server)

    return true;
  }

  Future<Either<Failure,LoginResponseEntity>> tryToLogin(String username, String password) async {
    // TODO: add code here

    // get shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // TODO: on success, store the JWT token to shared preferences

    // TODO: load additional data from server to cache (in background)

    // TODO: remove this later
    return Left(MaintenanceError());
  }

}