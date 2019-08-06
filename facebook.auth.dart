... . . 


Future<String> signInWithFacebook(context) async {

 final facebookLogin = new FacebookLogin();
 final result = await facebookLogin.logInWithReadPermissions(['email', 'public_profile']);
 if(result.status == FacebookLoginStatus.loggedIn) {
    prin("LoggedIn successfully");
    AuthCredential credential= FacebookAuthProvider.getCredential(accessToken: result.accessToken.token);
    final FirebaseUser user = (await _firebaseAuth.signInWithCredential(credential)).user;
    return user?.uid;
  }
  else {
  print('login eeror ${result.errorMessage}');
  }
}

... .. . .. . 
